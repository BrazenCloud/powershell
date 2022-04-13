Function Invoke-RwPowerShellCommand {
    [cmdletbinding(DefaultParameterSetName = 'ByName')]
    param (
        [Parameter(
            ParameterSetName = 'ByName',
            Mandatory
        )]
        [Alias('Name','AssetName')]
        [string]$RunnerName,

        [Parameter(
            ParameterSetName = 'ById',
            Mandatory
        )]
        [Alias('Id','RunnerId')]
        [string]$AssetId,

        [Parameter(Mandatory)]
        [Alias('Command')]
        [scriptblock]$ScriptBlock,

        [switch]$PWSH,

        [switch]$LeaveJob,

        [int]$SerializeDepth = 2,

        [switch]$DefaultPropertiesOnly
    )
    # Load the run command from the Action Repository
    $runCommand = Get-RwRepository -Name 'PowerShell:RunCommand'

    if ($null -ne $runCommand) {
        # If RunnerID is not passed, look it up
        if ($PSCmdlet.ParameterSetName -eq 'ByName') {

            $runners = (Get-RwRunner).Items

            $AssetId = (Get-RwRunnerByName -AssetName $RunnerName).AssetId
        }

        # Create a set to assign the job to
        $assignSet = New-RwSet

        # Add the runner to the Job
        Add-RwSetToSet -TargetSetId $assignSet -ObjectIds $AssetId | Out-Null

        # Generate a name, it should use Get-RwJobRandomJobName,
        # however that is currently bugged.
        $jobName = (Invoke-RestMethod -Headers @{Authorization = "Session $($env:RunwaySessionToken)"} -Uri 'https://portal.runway.host/api/v2/jobs/name' -Method Get)

        # Create the job
        $nj = New-RwJob -IsEnabled -IsHidden:$false -EndpointSetId $assignSet -Name $jobName -Schedule (New-RwJobScheduleObject -ScheduleType 'RunNow' -RepeatMinutes 0) -Actions @(
            @{
                RepositoryActionId = $runCommand.Id
                Settings = @{
                    Command = $ScriptBlock
                    PWSH = $PWSH.IsPresent
                    'Serialize Depth' = $SerializeDepth
                    'Default Properties Only' = $DefaultPropertiesOnly.IsPresent
                    'Debug' = $true
                }
            }
        )
        
        # Wait for the job to complete
        $job = Get-RwJob -JobId $nj.JobId
        While($job.TotalEndpointsFinished -lt $job.TotalEndpointsAssigned) {
            Start-Sleep -Seconds 2
            $job = Get-RwJob -JobId $nj.JobId
        }

        # Once it completes, look up the thread id for the job and runner
        $completedRunner = (Invoke-RwQueryEndpointAsset -RootContainerId $assignSet -MembershipCheckId $nj.JobId -IncludeSubgroups -Skip 0 -Take 20 -SortDirection 0).Items
        
        # With the thread ID, pull the thread log
        Get-RwJobThreadLastLog -ThreadId $completedRunner.LastThreadId -OutFile .\rwtmp.txt

        # Write the content to disk, it will be in CliXml format
        Get-Content .\rwtmp.txt | Where-Object {$_ -notlike '# *'} | Out-File .\results.xml -Force

        # Import the output
        Import-Clixml .\results.xml

        # Clean up the files
        Remove-Item .\rwtmp.txt
        Remove-Item .\results.xml

        # Clean up the job
        if (-not $LeaveJob.IsPresent) {
            Remove-RwJob -JobId $nj.JobId | Out-Null
        }
    } else {
        Write-Warning "Unable to find 'PowerShell:RunCommand' action. Add the command to your Runway tenant and then retry."
    }
}
