---
external help file:
Module Name: Runway
online version: https://docs.microsoft.com/en-us/powershell/module/runway/invoke-rwquerygroupex
schema: 2.0.0
---

# Invoke-RwQueryGroupEx

## SYNOPSIS


## SYNTAX

### QueryExpanded (Default)
```
Invoke-RwQueryGroupEx -IncludeSubgroups -Skip <Int32> -SortDirection <String> -Take <Int32>
 [-FilterCaseSensitive] [-FilterChildren <IFilterComparison[]>] [-FilterLeft <String>]
 [-FilterOperator <String>] [-FilterRight <String>] [-MembershipCheckId <String>] [-RootContainerId <String>]
 [-SelectionCheckId <String>] [-SortField <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Query
```
Invoke-RwQueryGroupEx -Query <IQuery> [-Confirm] [-WhatIf] [<CommonParameters>]
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

### -FilterCaseSensitive
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: QueryExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FilterChildren
.
To construct, see NOTES section for FILTERCHILDREN properties and create a hash table.

```yaml
Type: RunwaySdk.PowerShell.Models.IFilterComparison[]
Parameter Sets: QueryExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FilterLeft
.

```yaml
Type: System.String
Parameter Sets: QueryExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FilterOperator
.

```yaml
Type: System.String
Parameter Sets: QueryExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FilterRight
.

```yaml
Type: System.String
Parameter Sets: QueryExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeSubgroups
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: QueryExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MembershipCheckId
.

```yaml
Type: System.String
Parameter Sets: QueryExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Query
.
To construct, see NOTES section for QUERY properties and create a hash table.

```yaml
Type: RunwaySdk.PowerShell.Models.IQuery
Parameter Sets: Query
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -RootContainerId
.

```yaml
Type: System.String
Parameter Sets: QueryExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SelectionCheckId
.

```yaml
Type: System.String
Parameter Sets: QueryExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Skip
.

```yaml
Type: System.Int32
Parameter Sets: QueryExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SortDirection
.

```yaml
Type: System.String
Parameter Sets: QueryExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SortField
.

```yaml
Type: System.String
Parameter Sets: QueryExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Take
.

```yaml
Type: System.Int32
Parameter Sets: QueryExpanded
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

### RunwaySdk.PowerShell.Models.IQuery

## OUTPUTS

### RunwaySdk.PowerShell.Models.IQueryResponseOfGroupQueryViewEx

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


FILTERCHILDREN <IFilterComparison[]>: .
  - `CaseSensitive <Boolean>`: 
  - `[Children <IFilterComparison[]>]`: 
  - `[Left <String>]`: 
  - `[Operator <String>]`: 
  - `[Right <String>]`: 

QUERY <IQuery>: .
  - `IncludeSubgroups <Boolean>`: 
  - `Skip <Int32>`: 
  - `SortDirection <String>`: 
  - `Take <Int32>`: 
  - `[FilterCaseSensitive <Boolean?>]`: 
  - `[FilterChildren <IFilterComparison[]>]`: 
    - `CaseSensitive <Boolean>`: 
    - `[Children <IFilterComparison[]>]`: 
    - `[Left <String>]`: 
    - `[Operator <String>]`: 
    - `[Right <String>]`: 
  - `[FilterLeft <String>]`: 
  - `[FilterOperator <String>]`: 
  - `[FilterRight <String>]`: 
  - `[MembershipCheckId <String>]`: 
  - `[RootContainerId <String>]`: 
  - `[SelectionCheckId <String>]`: 
  - `[SortField <String>]`: 

## RELATED LINKS

