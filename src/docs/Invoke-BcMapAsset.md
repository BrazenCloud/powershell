---
external help file:
Module Name: BrazenCloud
online version: https://docs.microsoft.com/en-us/powershell/module/brazencloud/invoke-bcmapasset
schema: 2.0.0
---

# Invoke-BcMapAsset

## SYNOPSIS


## SYNTAX

### MapExpanded (Default)
```
Invoke-BcMapAsset [-EndpointData <IAssetMapEndpoint[]>] [-GroupId <String>]
 [-KubernetesData <IKubernetesEndpoint[]>] [-Tags <String>] [-PassThru] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### Map
```
Invoke-BcMapAsset -Request <IAssetMap> [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
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

### -EndpointData
.
To construct, see NOTES section for ENDPOINTDATA properties and create a hash table.

```yaml
Type: BrazenCloudSdk.PowerShell.Models.IAssetMapEndpoint[]
Parameter Sets: MapExpanded
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
Parameter Sets: MapExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KubernetesData
.
To construct, see NOTES section for KUBERNETESDATA properties and create a hash table.

```yaml
Type: BrazenCloudSdk.PowerShell.Models.IKubernetesEndpoint[]
Parameter Sets: MapExpanded
Aliases:

Required: False
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

### -Request
.
To construct, see NOTES section for REQUEST properties and create a hash table.

```yaml
Type: BrazenCloudSdk.PowerShell.Models.IAssetMap
Parameter Sets: Map
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Tags
.

```yaml
Type: System.String
Parameter Sets: MapExpanded
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

### BrazenCloudSdk.PowerShell.Models.IAssetMap

## OUTPUTS

### System.Boolean

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


ENDPOINTDATA <IAssetMapEndpoint[]>: .
  - `TypeHint <Int32>`: 
  - `[DeviceType <String>]`: 
  - `[DnsName <String>]`: 
  - `[EndpointType <String>]`: 
  - `[GatewayAddress <String>]`: 
  - `[HardwareProduct <String>]`: 
  - `[IPAddress <String>]`: 
  - `[Interfaces <IAssetMapNetworkInterface[]>]`: 
    - `[ArpCache <IAssetMapArpCache[]>]`: 
      - `[IPAddress <String>]`: 
      - `[MacAddress <String>]`: 
    - `[DnsName <String>]`: 
    - `[GatewayAddress <String>]`: 
    - `[IPAddress <String>]`: 
    - `[Index <String>]`: 
    - `[MacAddress <String>]`: 
  - `[KnownMac <String>]`: 
  - `[LocalName <String>]`: 
  - `[MacAddress <String>]`: 
  - `[Props <IAssetMapDataPair[]>]`: 
    - `[Name <String>]`: 
    - `[Value <String>]`: 
  - `[SystemInfo <IAssetMapDataPair[]>]`: 
  - `[UniqueFingerprint <String>]`: 
  - `[UserAccounts <IAssetMapUserAccount[]>]`: 
    - `[AccountData <IAssetMapDataPair[]>]`: 

KUBERNETESDATA <IKubernetesEndpoint[]>: .
  - `[HostIP <String>]`: 
  - `[IPAddress <String>]`: 
  - `[Kind <String>]`: 
  - `[Name <String>]`: 
  - `[Namespace <String>]`: 
  - `[NodeName <String>]`: 

REQUEST <IAssetMap>: .
  - `[EndpointData <IAssetMapEndpoint[]>]`: 
    - `TypeHint <Int32>`: 
    - `[DeviceType <String>]`: 
    - `[DnsName <String>]`: 
    - `[EndpointType <String>]`: 
    - `[GatewayAddress <String>]`: 
    - `[HardwareProduct <String>]`: 
    - `[IPAddress <String>]`: 
    - `[Interfaces <IAssetMapNetworkInterface[]>]`: 
      - `[ArpCache <IAssetMapArpCache[]>]`: 
        - `[IPAddress <String>]`: 
        - `[MacAddress <String>]`: 
      - `[DnsName <String>]`: 
      - `[GatewayAddress <String>]`: 
      - `[IPAddress <String>]`: 
      - `[Index <String>]`: 
      - `[MacAddress <String>]`: 
    - `[KnownMac <String>]`: 
    - `[LocalName <String>]`: 
    - `[MacAddress <String>]`: 
    - `[Props <IAssetMapDataPair[]>]`: 
      - `[Name <String>]`: 
      - `[Value <String>]`: 
    - `[SystemInfo <IAssetMapDataPair[]>]`: 
    - `[UniqueFingerprint <String>]`: 
    - `[UserAccounts <IAssetMapUserAccount[]>]`: 
      - `[AccountData <IAssetMapDataPair[]>]`: 
  - `[GroupId <String>]`: 
  - `[KubernetesData <IKubernetesEndpoint[]>]`: 
    - `[HostIP <String>]`: 
    - `[IPAddress <String>]`: 
    - `[Kind <String>]`: 
    - `[Name <String>]`: 
    - `[Namespace <String>]`: 
    - `[NodeName <String>]`: 
  - `[Tags <String>]`: 

## RELATED LINKS

