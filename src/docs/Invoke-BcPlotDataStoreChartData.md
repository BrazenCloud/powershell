---
external help file:
Module Name: BrazenCloud
online version: https://docs.microsoft.com/en-us/powershell/module/brazencloud/invoke-bcplotdatastorechartdata
schema: 2.0.0
---

# Invoke-BcPlotDataStoreChartData

## SYNOPSIS


## SYNTAX

### PlotExpanded (Default)
```
Invoke-BcPlotDataStoreChartData -IndexName <String> -ChartType <String> -OutFile <String> -XFieldAutoIncrement
 [-ChartTitle <String>] [-From <Int32>] [-GroupId <String>] [-SearchQuery <IAny>] [-Take <Int32>]
 [-XField <String>] [-YField <String>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Plot
```
Invoke-BcPlotDataStoreChartData -IndexName <String> -OutFile <String>
 -RequestModel <IPlotChartDataRequestModel> [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### PlotViaIdentity
```
Invoke-BcPlotDataStoreChartData -InputObject <IBrazenCloudIdentity> -OutFile <String>
 -RequestModel <IPlotChartDataRequestModel> [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### PlotViaIdentityExpanded
```
Invoke-BcPlotDataStoreChartData -InputObject <IBrazenCloudIdentity> -ChartType <String> -OutFile <String>
 -XFieldAutoIncrement [-ChartTitle <String>] [-From <Int32>] [-GroupId <String>] [-SearchQuery <IAny>]
 [-Take <Int32>] [-XField <String>] [-YField <String>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
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

### -ChartTitle
.

```yaml
Type: System.String
Parameter Sets: PlotExpanded, PlotViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ChartType
.

```yaml
Type: System.String
Parameter Sets: PlotExpanded, PlotViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -From
.

```yaml
Type: System.Int32
Parameter Sets: PlotExpanded, PlotViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GroupId
.

```yaml
Type: System.String
Parameter Sets: PlotExpanded, PlotViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IndexName
.

```yaml
Type: System.String
Parameter Sets: Plot, PlotExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
Identity Parameter
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: BrazenCloudSdk.PowerShell.Models.IBrazenCloudIdentity
Parameter Sets: PlotViaIdentity, PlotViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -OutFile
Path to write output file to

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
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

### -RequestModel
.
To construct, see NOTES section for REQUESTMODEL properties and create a hash table.

```yaml
Type: BrazenCloudSdk.PowerShell.Models.IPlotChartDataRequestModel
Parameter Sets: Plot, PlotViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -SearchQuery
Any object

```yaml
Type: BrazenCloudSdk.PowerShell.Models.IAny
Parameter Sets: PlotExpanded, PlotViaIdentityExpanded
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
Parameter Sets: PlotExpanded, PlotViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -XField
.

```yaml
Type: System.String
Parameter Sets: PlotExpanded, PlotViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -XFieldAutoIncrement
.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: PlotExpanded, PlotViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -YField
.

```yaml
Type: System.String
Parameter Sets: PlotExpanded, PlotViaIdentityExpanded
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

### BrazenCloudSdk.PowerShell.Models.IBrazenCloudIdentity

### BrazenCloudSdk.PowerShell.Models.IPlotChartDataRequestModel

## OUTPUTS

### System.Boolean

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


INPUTOBJECT <IBrazenCloudIdentity>: Identity Parameter
  - `[AccountId <String>]`: 
  - `[ActionId <String>]`: 
  - `[ConnectionId <String>]`: 
  - `[ContentId <String>]`: 
  - `[Email <String>]`: 
  - `[EndpointId <String>]`: 
  - `[FolderId <String>]`: 
  - `[GroupId <String>]`: 
  - `[IPAddress <String>]`: 
  - `[IndexName <String>]`: 
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

REQUESTMODEL <IPlotChartDataRequestModel>: .
  - `ChartType <String>`: 
  - `XFieldAutoIncrement <Boolean>`: 
  - `[ChartTitle <String>]`: 
  - `[From <Int32?>]`: 
  - `[GroupId <String>]`: 
  - `[SearchQuery <IAny>]`: Any object
  - `[Take <Int32?>]`: 
  - `[XField <String>]`: 
  - `[YField <String>]`: 

## RELATED LINKS

