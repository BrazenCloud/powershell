---
external help file:
Module Name: PsRunway
online version: https://docs.microsoft.com/en-us/powershell/module/psrunway/new-rwjob
schema: 2.0.0
---

# New-RwJob

## SYNOPSIS


## SYNTAX

### CreateExpanded (Default)
```
New-RwJob -IsEnabled -IsHidden [-Actions <IActionSettingRequest[]>] [-Description <String>]
 [-EndpointSetId <String>] [-GroupId <String>] [-Name <String>] [-Schedule <IJobSchedule>] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

### Create
```
New-RwJob -Request <ICreateJobRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION


## EXAMPLES

### Example 1: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

## PARAMETERS

### -Actions
.
To construct, see NOTES section for ACTIONS properties and create a hash table.

```yaml
Type: Runway.PowerShell.Models.IActionSettingRequest[]
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
.

```yaml
Type: System.String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EndpointSetId
.

```yaml
Type: System.String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GroupId
.

```yaml
Type: System.String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IsEnabled
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: CreateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IsHidden
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: CreateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
.

```yaml
Type: System.String
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Request
.
To construct, see NOTES section for REQUEST properties and create a hash table.

```yaml
Type: Runway.PowerShell.Models.ICreateJobRequest
Parameter Sets: Create
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Schedule
.
To construct, see NOTES section for SCHEDULE properties and create a hash table.

```yaml
Type: Runway.PowerShell.Models.IJobSchedule
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Runway.PowerShell.Models.ICreateJobRequest

## OUTPUTS

### Runway.PowerShell.Models.ICreateJobResponse

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


ACTIONS <IActionSettingRequest[]>: .
  - `[ConnectionId <String>]`: 
  - `[ConnectionName <String>]`: 
  - `[Folder <String>]`: 
  - `[RepositoryActionId <String>]`: 
  - `[RunOn <String>]`: 
  - `[Settings <IActionSettingRequestSettings>]`: Dictionary of <string>
    - `[(Any) <String>]`: This indicates any property can be added to this object.
  - `[SpecificPlacementId <String>]`: 
  - `[StepBehavior <String>]`: 

REQUEST <ICreateJobRequest>: .
  - `IsEnabled <Boolean>`: 
  - `IsHidden <Boolean>`: 
  - `[Actions <IActionSettingRequest[]>]`: 
    - `[ConnectionId <String>]`: 
    - `[ConnectionName <String>]`: 
    - `[Folder <String>]`: 
    - `[RepositoryActionId <String>]`: 
    - `[RunOn <String>]`: 
    - `[Settings <IActionSettingRequestSettings>]`: Dictionary of <string>
      - `[(Any) <String>]`: This indicates any property can be added to this object.
    - `[SpecificPlacementId <String>]`: 
    - `[StepBehavior <String>]`: 
  - `[Description <String>]`: 
  - `[Name <String>]`: 
  - `[EndpointSetId <String>]`: 
  - `[GroupId <String>]`: 
  - `[Schedule <IJobSchedule>]`: 
    - `RepeatMinutes <Int32>`: 
    - `ScheduleType <String>`: 
    - `[Time <String>]`: 
    - `[Weekdays <String>]`: 

SCHEDULE <IJobSchedule>: .
  - `RepeatMinutes <Int32>`: 
  - `ScheduleType <String>`: 
  - `[Time <String>]`: 
  - `[Weekdays <String>]`: 

## RELATED LINKS

