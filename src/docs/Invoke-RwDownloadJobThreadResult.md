---
external help file:
Module Name: Runway
online version: https://docs.microsoft.com/en-us/powershell/module/runway/invoke-rwdownloadjobthreadresult
schema: 2.0.0
---

# Invoke-RwDownloadJobThreadResult

## SYNOPSIS


## SYNTAX

### Download (Default)
```
Invoke-RwDownloadJobThreadResult -ThreadId <String> -OutFile <String> [-PassThru] [<CommonParameters>]
```

### DownloadViaIdentity
```
Invoke-RwDownloadJobThreadResult -InputObject <IRunwayIdentity> -OutFile <String> [-PassThru]
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

### -InputObject
Identity Parameter
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: RunwaySdk.PowerShell.Models.IRunwayIdentity
Parameter Sets: DownloadViaIdentity
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

### -ThreadId
.

```yaml
Type: System.String
Parameter Sets: Download
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

### RunwaySdk.PowerShell.Models.IRunwayIdentity

## OUTPUTS

### System.Boolean

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


INPUTOBJECT <IRunwayIdentity>: Identity Parameter
  - `[AccountId <String>]`: 
  - `[ActionId <String>]`: 
  - `[ConnectionId <String>]`: 
  - `[ContentId <String>]`: 
  - `[Email <String>]`: 
  - `[EndpointId <String>]`: 
  - `[FolderId <String>]`: 
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
  - `[Stream <String>]`: 
  - `[TargetSetId <String>]`: 
  - `[ThreadId <String>]`: 
  - `[UserId <String>]`: 

## RELATED LINKS

