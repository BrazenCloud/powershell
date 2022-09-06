---
external help file:
Module Name: BrazenCloud
online version: https://docs.microsoft.com/en-us/powershell/module/brazencloud/invoke-bcinviteinvitationuser
schema: 2.0.0
---

# Invoke-BcInviteInvitationUser

## SYNOPSIS


## SYNTAX

### InviteExpanded (Default)
```
Invoke-BcInviteInvitationUser [-GroupId <String>] [-Invitations <IEmailInvitation[]>] [-PassThru] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

### Invite
```
Invoke-BcInviteInvitationUser -Request <IGroupInvitationRequest> [-PassThru] [-Confirm] [-WhatIf]
 [<CommonParameters>]
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

### -GroupId
.

```yaml
Type: System.String
Parameter Sets: InviteExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Invitations
.
To construct, see NOTES section for INVITATIONS properties and create a hash table.

```yaml
Type: BrazenCloudSdk.PowerShell.Models.IEmailInvitation[]
Parameter Sets: InviteExpanded
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

### -Request
.
To construct, see NOTES section for REQUEST properties and create a hash table.

```yaml
Type: BrazenCloudSdk.PowerShell.Models.IGroupInvitationRequest
Parameter Sets: Invite
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
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

### BrazenCloudSdk.PowerShell.Models.IGroupInvitationRequest

## OUTPUTS

### System.Boolean

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


INVITATIONS <IEmailInvitation[]>: .
  - `[EmailAddress <String>]`: 
  - `[RoleId <String>]`: 

REQUEST <IGroupInvitationRequest>: .
  - `[GroupId <String>]`: 
  - `[Invitations <IEmailInvitation[]>]`: 
    - `[EmailAddress <String>]`: 
    - `[RoleId <String>]`: 

## RELATED LINKS

