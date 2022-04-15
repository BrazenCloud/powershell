---
external help file:
Module Name: Runway
online version: https://docs.microsoft.com/en-us/powershell/module/runway/invoke-rwshellremoteshellwrite
schema: 2.0.0
---

# Invoke-RwShellRemoteShellWrite

## SYNOPSIS


## SYNTAX

### ShellExpanded (Default)
```
Invoke-RwShellRemoteShellWrite -InternalCommand [-ExecuteCmd <String>] [-RunnerId <String>] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

### Shell
```
Invoke-RwShellRemoteShellWrite -Request <IRemoteShellRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
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

### -ExecuteCmd
.

```yaml
Type: System.String
Parameter Sets: ShellExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InternalCommand
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: ShellExpanded
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
Type: RunwaySdk.PowerShell.Models.IRemoteShellRequest
Parameter Sets: Shell
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -RunnerId
.

```yaml
Type: System.String
Parameter Sets: ShellExpanded
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

### RunwaySdk.PowerShell.Models.IRemoteShellRequest

## OUTPUTS

### System.String

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


REQUEST <IRemoteShellRequest>: .
  - `InternalCommand <Boolean>`: 
  - `[ExecuteCmd <String>]`: 
  - `[RunnerId <String>]`: 

## RELATED LINKS

