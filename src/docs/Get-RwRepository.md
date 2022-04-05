---
external help file:
Module Name: PsRunway
online version: https://docs.microsoft.com/en-us/powershell/module/psrunway/get-rwrepository
schema: 2.0.0
---

# Get-RwRepository

## SYNOPSIS


## SYNTAX

### List (Default)
```
Get-RwRepository [<CommonParameters>]
```

### Load
```
Get-RwRepository -Name <String> [<CommonParameters>]
```

### Load1
```
Get-RwRepository -RepositoryId <String> [<CommonParameters>]
```

### LoadViaIdentity
```
Get-RwRepository -InputObject <IPsRunwayIdentity> [<CommonParameters>]
```

### LoadViaIdentity1
```
Get-RwRepository -InputObject <IPsRunwayIdentity> [<CommonParameters>]
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

### -InputObject
Identity Parameter
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: Runway.PowerShell.Models.IPsRunwayIdentity
Parameter Sets: LoadViaIdentity, LoadViaIdentity1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Name
.

```yaml
Type: System.String
Parameter Sets: Load
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RepositoryId
.

```yaml
Type: System.String
Parameter Sets: Load1
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

### Runway.PowerShell.Models.IPsRunwayIdentity

## OUTPUTS

### Runway.PowerShell.Models.IQueryResponseOfIRepositoryItemQueryView

### Runway.PowerShell.Models.IRunwayRepositoryItem

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


INPUTOBJECT <IPsRunwayIdentity>: Identity Parameter
  - `[AccountId <String>]`: 
  - `[ActionId <String>]`: 
  - `[ConnectionId <String>]`: 
  - `[ContentId <String>]`: 
  - `[Email <String>]`: 
  - `[EndpointId <String>]`: 
  - `[GroupId <String>]`: 
  - `[IPAddress <String>]`: 
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
  - `[TargetSetId <String>]`: 
  - `[ThreadId <String>]`: 
  - `[UserId <String>]`: 

## RELATED LINKS

