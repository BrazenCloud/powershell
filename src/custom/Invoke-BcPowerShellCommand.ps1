Function Invoke-BcPowerShellCommand {
    [cmdletbinding(DefaultParameterSetName = 'ByName')]
    param (
        [Parameter(
            ParameterSetName = 'ByName',
            Mandatory
        )]
        [Parameter(
            ParameterSetName = 'ByNameRaw',
            Mandatory
        )]
        [Alias('Name', 'AssetName')]
        [string]$RunnerName,

        [Parameter(
            ParameterSetName = 'ById',
            Mandatory
        )]
        [Parameter(
            ParameterSetName = 'ByIdRaw',
            Mandatory
        )]
        [Alias('Id', 'RunnerId')]
        [string]$AssetId,

        [Parameter(Mandatory)]
        [Alias('Command')]
        [scriptblock]$ScriptBlock,

        [switch]$PWSH,

        [switch]$LeaveJob,

        [Parameter(
            ParameterSetName = 'ById'
        )]
        [Parameter(
            ParameterSetName = 'ByName'
        )]
        [int]$SerializeDepth = 2,

        [Parameter(
            ParameterSetName = 'ById'
        )]
        [Parameter(
            ParameterSetName = 'ByName'
        )]
        [switch]$DefaultPropertiesOnly,

        [Parameter(
            ParameterSetName = 'ByIdRaw',
            Mandatory
        )]
        [Parameter(
            ParameterSetName = 'ByNameRaw',
            Mandatory
        )]
        [switch]$Raw
    )
    # Load the run command from the Action Repository
    $runCommand = Get-BcRepository -Name 'PowerShell:RunCommand'

    if ($null -ne $runCommand) {
        # If RunnerID is not passed, look it up
        if ($PSCmdlet.ParameterSetName -like 'ByName*') {

            $AssetId = (Get-BcRunnerByName -AssetName $RunnerName).AssetId
        }

        # Create a set to assign the job to
        $assignSet = New-BcSet

        # Add the runner to the Job
        Add-BcSetToSet -TargetSetId $assignSet -ObjectIds $AssetId | Out-Null

        # Generate a name, it should use Get-BcJobRandomJobName,
        # however that is currently bugged.
        $jobName = Get-BcJobRandomJobName

        # Create the job
        $nj = New-BcJob -IsEnabled -IsHidden:$false -EndpointSetId $assignSet -Name $jobName -Schedule (New-BcJobScheduleObject -ScheduleType 'RunNow' -RepeatMinutes 0) -Actions @(
            @{
                RepositoryActionId = $runCommand.Id
                Settings           = @{
                    Command                   = $ScriptBlock
                    PWSH                      = $PWSH.IsPresent
                    'Serialize Depth'         = $SerializeDepth
                    'Default Properties Only' = $DefaultPropertiesOnly.IsPresent
                    'Debug'                   = $true
                    'Raw Output'              = $Raw.IsPresent
                }
            }
        )
        
        # Wait for the job to complete
        $job = Get-BcJob -JobId $nj.JobId
        While ($job.TotalEndpointsFinished -lt $job.TotalEndpointsAssigned) {
            Start-Sleep -Seconds 2
            $job = Get-BcJob -JobId $nj.JobId
        }

        # Once it completes, look up the thread id for the job and runner
        $completedThread = Get-BcJobThread -JobId $job.Id | Where-Object { $_.ProdigalObjectId -eq $AssetId }
        
        # With the thread ID, pull the thread log
        Get-BcJobThreadLastLog -ThreadId $completedThread.Id -OutFile .\rwtmp.txt

        if ($Raw.IsPresent) {
            # Get the contents
            Get-Content .\rwtmp.txt | Where-Object { $_ -notlike '# *' }
        } else {
            # Write the content to disk, it will be in CliXml format
            Get-Content .\rwtmp.txt | Where-Object { $_ -notlike '# *' } | Out-File .\results.xml -Force

            # Import the output
            Import-Clixml .\results.xml

            # Clean up XML file
            Remove-Item .\results.xml
        }

        # Clean up the files
        Remove-Item .\rwtmp.txt

        # Clean up the job
        if (-not $LeaveJob.IsPresent) {
            Remove-BcJob -JobId $nj.JobId | Out-Null
        }
    } else {
        Write-Warning "Unable to find 'PowerShell:RunCommand' action. Add the command to your Runway tenant and then retry."
    }
}
