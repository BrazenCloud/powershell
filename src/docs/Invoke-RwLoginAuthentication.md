---
external help file:
Module Name: Runway
online version: https://docs.microsoft.com/en-us/powershell/module/runway/invoke-rwloginauthentication
schema: 2.0.0
---

# Invoke-RwLoginAuthentication

## SYNOPSIS

Makes a raw authentication call.

## SYNTAX

### LoginExpanded (Default)
```
Invoke-RwLoginAuthentication -Remember [-Email <String>] [-Password <String>] [-Ttl <String>] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

### Login
```
Invoke-RwLoginAuthentication -Request <ILoginRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION

The best way to authenticate to Runway is using Connect-Runway.

Connect-Runway calls this cmdlet to hit the Runway API and get a session token.


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
Type: RunwaySdk.PowerShell.Models.ILoginRequest
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

### RunwaySdk.PowerShell.Models.ILoginRequest

## OUTPUTS

### RunwaySdk.PowerShell.Models.ILoginResponse

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

