---
external help file:
Module Name: BrazenCloud
online version: https://docs.microsoft.com/en-us/powershell/module/brazencloud/invoke-bcloginauthentication
schema: 2.0.0
---

# Invoke-BcLoginAuthentication

## SYNOPSIS


## SYNTAX

### LoginExpanded (Default)
```
Invoke-BcLoginAuthentication -Remember [-Email <String>] [-Password <String>] [-Ttl <String>] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

### Login
```
Invoke-BcLoginAuthentication -Request <ILoginRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
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
Parameter Sets: LoginExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Password
.

```yaml
Type: System.String
Parameter Sets: LoginExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Remember
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: LoginExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Request
.
To construct, see NOTES section for REQUEST properties and create a hash table.

```yaml
Type: BrazenCloudSdk.PowerShell.Models.ILoginRequest
Parameter Sets: Login
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Ttl
.

```yaml
Type: System.String
Parameter Sets: LoginExpanded
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

### BrazenCloudSdk.PowerShell.Models.ILoginRequest

## OUTPUTS

### BrazenCloudSdk.PowerShell.Models.ILoginResponse

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


REQUEST <ILoginRequest>: .
  - `Remember <Boolean>`: 
  - `[Email <String>]`: 
  - `[Password <String>]`: 
  - `[Ttl <String>]`: 

## RELATED LINKS

