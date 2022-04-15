---
external help file:
Module Name: Runway
online version: https://docs.microsoft.com/en-us/powershell/module/runway/invoke-rwpowershellcommand
schema: 2.0.0
---

# Invoke-RwPowerShellCommand

## SYNOPSIS


## SYNTAX

### ByName (Default)
```
Invoke-RwPowerShellCommand -DefaultPropertiesOnly -RunnerName <String> -ScriptBlock <ScriptBlock>
 -SerializeDepth <Int32> [-LeaveJob] [-PWSH] [<CommonParameters>]
```

### ById
```
Invoke-RwPowerShellCommand -AssetId <String> -DefaultPropertiesOnly -ScriptBlock <ScriptBlock>
 -SerializeDepth <Int32> [-LeaveJob] [-PWSH] [<CommonParameters>]
```

### ByIdRaw
```
Invoke-RwPowerShellCommand -AssetId <String> -Raw -ScriptBlock <ScriptBlock> [-LeaveJob] [-PWSH]
 [<CommonParameters>]
```

### ByNameRaw
```
Invoke-RwPowerShellCommand -Raw -RunnerName <String> -ScriptBlock <ScriptBlock> [-LeaveJob] [-PWSH]
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

### -AssetId


```yaml
Type: System.String
Parameter Sets: ById, ByIdRaw
Aliases: Id, RunnerId

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultPropertiesOnly


```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: ById, ByName
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LeaveJob


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

### -PWSH


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

### -Raw


```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: ByIdRaw, ByNameRaw
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RunnerName


```yaml
Type: System.String
Parameter Sets: ByName, ByNameRaw
Aliases: Name, AssetName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScriptBlock


```yaml
Type: System.Management.Automation.ScriptBlock
Parameter Sets: (All)
Aliases: Command

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SerializeDepth


```yaml
Type: System.Int32
Parameter Sets: ById, ByName
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Object

## NOTES

ALIASES

## RELATED LINKS

