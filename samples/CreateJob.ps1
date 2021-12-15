# Auth
$session = Invoke-RwLoginAuthentication -Remember -Email <email> -Password <password>
$env:RunwaySessionToken = $session.Session

# Define variables
$jobName = 'PsTest Job'
$actionName = 'inventory:netstat'
$assetName = '<assetname>'
$groupName = 'Home*'

# Retrieve the appropriate objects
$runners = (Get-RwRunner).Items
$actions = (Get-RwRepository).Items
$groups = (Get-RwGroup).Items

# Find the specific action, runner, and group
$action = $actions | ?{$_.Name -eq $actionName}
$runner = $runners | ?{$_.AssetName -eq $assetName}
$group = $groups | ?{$_.Name -like $groupName} | Select -First 1

# Greate a 'set' (essentially a temporary group)
$assignSet = New-RwSet
Add-RwSetToSet -TargetSetId $assignSet -ObjectIds $runner.AssetId

# Create the job
New-RwJob -IsEnabled -IsHidden:$false -EndpointSetId $assignSet -GroupId $group.Id -Name $jobName -ScheduleType 'RunNow' -scheduleRepeatMinutes 0 -ScheduleWeekdays '-------' -Actions @(
    [Runway.PowerShell.Models.IActionSettingRequest]@{
        RepositoryActionId = $action.Id # action ID
    }
)