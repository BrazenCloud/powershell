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
        [Alias('Id')]
        [string]$RunnerId,

        [Parameter(Mandatory)]
        [Alias('Command')]
        [scriptblock]$ScriptBlock,

        [switch]$PWSH,

        [switch]$LeaveJob,

        [int]$SerializeDepth = 2,

        [switch]$DefaultPropertiesOnly
    )
    # Load the run command from the Action Repository
    $runCommand = Import-RwRepository -Name 'PowerShell:RunCommand'

    if ($null -ne $runCommand) {

        if ($PSCmdlet.ParameterSetName -eq 'ByName') {

            $runners = (Get-RwRunner).Items

            $RunnerId = ($runners | Where-Object {$_.AssetName -eq $RunnerName}).AssetId
        }

        $assignSet = New-RwSet
        Add-RwSetToSet -TargetSetId $assignSet -ObjectIds $RunnerId| Out-Null

        $jobName = (Invoke-RestMethod -Headers @{Authorization = "Session $($env:RunwaySessionToken)"} -Uri 'https://portal.runway.host/api/v2/jobs/name' -Method Get)

        $nj = New-RwJob -IsEnabled -IsHidden:$false -EndpointSetId $assignSet -Name $jobName -ScheduleType 'RunNow' -scheduleRepeatMinutes 0 -ScheduleWeekdays '-------' -Actions @(
            [Runway.PowerShell.Models.IActionSettingRequest]@{
                RepositoryActionId = $runCommand.Id
                Settings = [Runway.PowerShell.Models.IActionSettingRequestSettings]@{
                    Command = $ScriptBlock
                    PWSH = $PWSH.IsPresent
                    'Serialize Depth' = $SerializeDepth
                    'Default Properties Only' = $DefaultPropertiesOnly.IsPresent
                    'Debug' = $true
                }
            }
        )
        
        #$waiting = $true
        $job = Import-RwJob -JobId $nj.JobId
        While($job.TotalEndpointsFinished -lt $job.TotalEndpointsAssigned) {
            Start-Sleep -Seconds 2
            $job = Import-RwJob -JobId $nj.JobId
        }

        $completedRunner = (Invoke-RwQueryEndpointAsset -RootContainerId $assignSet -MembershipCheckId $nj.JobId -IncludeSubgroups -Skip 0 -Take 20 -SortDirection 0).Items
        
        Get-RwJobThreadLastLog -ThreadId $completedRunner.LastThreadId -OutFile .\rwtmp.txt

        Get-Content .\rwtmp.txt | Where-Object {$_ -notlike '# *'} | Out-File .\results.xml -Force

        Import-Clixml .\results.xml

        Remove-Item .\rwtmp.txt
        Remove-Item .\results.xml

        if (-not $LeaveJob.IsPresent) {
            Remove-RwJob -JobId $nj.JobId -OutFile .\out.txt | Out-Null
        }
    } else {
        Write-Warning "Unable to find 'PowerShell:RunCommand' action. Add the command to your Runway tenant and then retry."
    }
}
