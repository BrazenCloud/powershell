---
external help file:
Module Name: BrazenCloud
online version: https://docs.microsoft.com/en-us/powershell/module/brazencloud/new-bcenrollmentsession
schema: 2.0.0
---

# New-BcEnrollmentSession

## SYNOPSIS


## SYNTAX

### CreateExpanded (Default)
```
New-BcEnrollmentSession -Expiration <DateTime> -IsOneTime -Type <String> [-GroupId <String>]
 [-JobIds <String[]>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Create
```
New-BcEnrollmentSession -Request <ICreateEnrollmentSessionRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
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

### -Expiration
.

```yaml
Type: System.DateTime
Parameter Sets: CreateExpanded
Aliases:

Required: True
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

### -IsOneTime
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

### -JobIds
.

```yaml
Type: System.String[]
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
Type: BrazenCloudSdk.PowerShell.Models.ICreateEnrollmentSessionRequest
Parameter Sets: Create
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Type
.

```yaml
Type: System.String
Parameter Sets: CreateExpanded
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

### BrazenCloudSdk.PowerShell.Models.ICreateEnrollmentSessionRequest

## OUTPUTS

### BrazenCloudSdk.PowerShell.Models.ITokenResponse

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


REQUEST <ICreateEnrollmentSessionRequest>: .
  - `Expiration <DateTime>`: 
  - `IsOneTime <Boolean>`: 
  - `Type <String>`: 
  - `[GroupId <String>]`: 
  - `[JobIds <String[]>]`: 

## RELATED LINKS

