# Auth
Connect-Runway -Email '<emailaddress>' -Password (ConvertTo-SecureString '<password>' -AsPlainText -Force)

# Define variables
$jobName = 'PsTest Job'
$actionName = 'inventory:netstat'
$assetName = '<assetName>'
$groupName = 'Home*'

# Retrieve the appropriate objects
$runners = (Get-RwRunner).Items
$groups = (Get-RwGroup).Items

# Find the specific runner and group
$runner = $runners | Where-Object {$_.AssetName -eq $assetName}
$group = $groups | Where-Object {$_.Name -like $groupName} | Select-Object -First 1

# Load the action
Get-RwRepository -Name $actionName

# Greate a 'set' (essentially a temporary group)
$assignSet = New-RwSet
Add-RwSetToSet -TargetSetId $assignSet -ObjectIds $runner.AssetId

# Create the schedule
$schedule = New-RwJobScheduleObject -ScheduleType 'RunNow' -RepeatMinutes 0

# Create the job
New-RwJob -IsEnabled -IsHidden:$false -EndpointSetId $assignSet -GroupId $group.Id -Name $jobName -Schedule $schedule -Actions @(
    [Runway.PowerShell.Models.IActionSettingRequest]@{
        RepositoryActionId = $action.Id # action ID
    }
)