---
external help file:
Module Name: Runway
online version: https://docs.microsoft.com/en-us/powershell/module/runway/add-rwsettoset
schema: 2.0.0
---

# Add-RwSetToSet

## SYNOPSIS


## SYNTAX

### Add (Default)
```
Add-RwSetToSet -TargetSetId <String> -ObjectIds <String[]> [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Add1
```
Add-RwSetToSet -SourceSetId <String> -TargetSetId <String> [-Confirm] [-WhatIf] [<CommonParameters>]
```

### AddViaIdentity
```
Add-RwSetToSet -InputObject <IRunwayIdentity> -ObjectIds <String[]> [-Confirm] [-WhatIf] [<CommonParameters>]
```

### AddViaIdentity1
```
Add-RwSetToSet -InputObject <IRunwayIdentity> [-Confirm] [-WhatIf] [<CommonParameters>]
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

### -InputObject
Identity Parameter
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: RunwaySdk.PowerShell.Models.IRunwayIdentity
Parameter Sets: AddViaIdentity, AddViaIdentity1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ObjectIds
Array of String

```yaml
Type: System.String[]
Parameter Sets: Add, AddViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -SourceSetId
.

```yaml
Type: System.String
Parameter Sets: Add1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TargetSetId
.

```yaml
Type: System.String
Parameter Sets: Add, Add1
Aliases:

Required: True
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

### RunwaySdk.PowerShell.Models.IRunwayIdentity

### System.String[]

## OUTPUTS

### System.Int64

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


INPUTOBJECT <IRunwayIdentity>: Identity Parameter
  - `[AccountId <String>]`: 
  - `[ActionId <String>]`: 
  - `[ConnectionId <String>]`: 
  - `[ContentId <String>]`: 
  - `[Email <String>]`: 
  - `[EndpointId <String>]`: 
  - `[FolderId <String>]`: 
  - `[GroupId <String>]`: 
  - `[IPAddress <String>]`: 
  - `[InvitationId <String>]`: 
  - `[JobId <String>]`: 
  - `[Name <String>]`: 
  - `[NodeId <String>]`: 
  - `[NotifyId <String>]`: 
  - `[Password <String>]`: 
  - `[RepositoryId <String>]`: 
  - `[RoleId <String>]`: 
  - `[RunnerId <String>]`: 
  - `[SetId <String>]`: 
  - `[SourceSetId <String>]`: 
  - `[Stream <String>]`: 
  - `[TargetSetId <String>]`: 
  - `[ThreadId <String>]`: 
  - `[UserId <String>]`: 

## RELATED LINKS

