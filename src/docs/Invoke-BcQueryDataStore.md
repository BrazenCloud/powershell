---
external help file:
Module Name: BrazenCloud
online version: https://docs.microsoft.com/en-us/powershell/module/brazencloud/invoke-bcquerydatastore
schema: 2.0.0
---

# Invoke-BcQueryDataStore

## SYNOPSIS


## SYNTAX

### QueryExpanded (Default)
```
Invoke-BcQueryDataStore -IndexName <String> -OutFile <String> [-From <Int32>] [-GroupId <String>]
 [-SearchQuery <IAny>] [-Take <Int32>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Query
```
Invoke-BcQueryDataStore -IndexName <String> -OutFile <String> -RequestModel <IQueryRequestModel> [-PassThru]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

### QueryViaIdentity
```
Invoke-BcQueryDataStore -InputObject <IBrazenCloudIdentity> -OutFile <String>
 -RequestModel <IQueryRequestModel> [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### QueryViaIdentityExpanded
```
Invoke-BcQueryDataStore -InputObject <IBrazenCloudIdentity> -OutFile <String> [-From <Int32>]
 [-GroupId <String>] [-SearchQuery <IAny>] [-Take <Int32>] [-PassThru] [-Confirm] [-WhatIf]
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

### -From
.

```yaml
Type: System.Int32
Parameter Sets: QueryExpanded, QueryViaIdentityExpanded
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
Parameter Sets: QueryExpanded, QueryViaIdentityExpanded
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
Parameter Sets: Query, QueryExpanded
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
Parameter Sets: QueryViaIdentity, QueryViaIdentityExpanded
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
Type: BrazenCloudSdk.PowerShell.Models.IQueryRequestModel
Parameter Sets: Query, QueryViaIdentity
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
Parameter Sets: QueryExpanded, QueryViaIdentityExpanded
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
Parameter Sets: QueryExpanded, QueryViaIdentityExpanded
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

### BrazenCloudSdk.PowerShell.Models.IQueryRequestModel

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

REQUESTMODEL <IQueryRequestModel>: .
  - `[From <Int32?>]`: 
  - `[GroupId <String>]`: 
  - `[SearchQuery <IAny>]`: Any object
  - `[Take <Int32?>]`: 

## RELATED LINKS

