---
external help file:
Module Name: Runway
online version: https://docs.microsoft.com/en-us/powershell/module/runway/set-rwuser
schema: 2.0.0
---

# Set-RwUser

## SYNOPSIS


## SYNTAX

### UpdateExpanded (Default)
```
Set-RwUser -UserId <String> [-Company <String>] [-Description <String>] [-Id <String>] [-Name <String>]
 [-Phone <String>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Update
```
Set-RwUser -UserId <String> -Request <IUpdateUserRequest> [-PassThru] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### UpdateViaIdentity
```
Set-RwUser -InputObject <IRunwayIdentity> -Request <IUpdateUserRequest> [-PassThru] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### UpdateViaIdentityExpanded
```
Set-RwUser -InputObject <IRunwayIdentity> [-Company <String>] [-Description <String>] [-Id <String>]
 [-Name <String>] [-Phone <String>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
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

### -Company
.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
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
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
Identity Parameter
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: RunwaySdk.PowerShell.Models.IRunwayIdentity
Parameter Sets: UpdateViaIdentity, UpdateViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Name
.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
Returns true when the command succeeds

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Phone
.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded, UpdateViaIdentityExpanded
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
Type: RunwaySdk.PowerShell.Models.IUpdateUserRequest
Parameter Sets: Update, UpdateViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -UserId
.

```yaml
Type: System.String
Parameter Sets: Update, UpdateExpanded
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

### RunwaySdk.PowerShell.Models.IUpdateUserRequest

## OUTPUTS

### System.Boolean

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

REQUEST <IUpdateUserRequest>: .
  - `[Company <String>]`: 
  - `[Description <String>]`: 
  - `[Id <String>]`: 
  - `[Name <String>]`: 
  - `[Phone <String>]`: 

## RELATED LINKS

