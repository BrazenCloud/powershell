---
external help file:
Module Name: PsRunway
online version: https://docs.microsoft.com/en-us/powershell/module/psrunway/invoke-rwenrollauthentication
schema: 2.0.0
---

# Invoke-RwEnrollAuthentication

## SYNOPSIS


## SYNTAX

### EnrollExpanded (Default)
```
Invoke-RwEnrollAuthentication [-EnrollmentToken <String>] [-Parameters <Hashtable>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### Enroll
```
Invoke-RwEnrollAuthentication -Request <IEnrollRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
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

### -EnrollmentToken
.

```yaml
Type: System.String
Parameter Sets: EnrollExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Parameters
Dictionary of \<string\>

```yaml
Type: System.Collections.Hashtable
Parameter Sets: EnrollExpanded
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
Type: Runway.PowerShell.Models.IEnrollRequest
Parameter Sets: Enroll
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

### Runway.PowerShell.Models.IEnrollRequest

## OUTPUTS

### Runway.PowerShell.Models.IEnrollResponse

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


REQUEST <IEnrollRequest>: .
  - `[EnrollmentToken <String>]`: 
  - `[Parameters <IEnrollRequestParameters>]`: Dictionary of <string>
    - `[(Any) <String>]`: This indicates any property can be added to this object.

## RELATED LINKS

