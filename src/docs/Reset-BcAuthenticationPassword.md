---
external help file:
Module Name: BrazenCloud
online version: https://docs.microsoft.com/en-us/powershell/module/brazencloud/reset-bcauthenticationpassword
schema: 2.0.0
---

# Reset-BcAuthenticationPassword

## SYNOPSIS


## SYNTAX

### ResetExpanded (Default)
```
Reset-BcAuthenticationPassword [-Email <String>] [-NewPassword <String>] [-OldPassword <String>] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

### Reset
```
Reset-BcAuthenticationPassword -Request <IResetPasswordRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
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

### -Email
.

```yaml
Type: System.String
Parameter Sets: ResetExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NewPassword
.

```yaml
Type: System.String
Parameter Sets: ResetExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OldPassword
.

```yaml
Type: System.String
Parameter Sets: ResetExpanded
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
Type: BrazenCloudSdk.PowerShell.Models.IResetPasswordRequest
Parameter Sets: Reset
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

### BrazenCloudSdk.PowerShell.Models.IResetPasswordRequest

## OUTPUTS

### BrazenCloudSdk.PowerShell.Models.ILoginResponse

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


REQUEST <IResetPasswordRequest>: .
  - `[Email <String>]`: 
  - `[NewPassword <String>]`: 
  - `[OldPassword <String>]`: 

## RELATED LINKS

