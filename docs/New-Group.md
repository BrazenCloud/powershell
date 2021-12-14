---
external help file:
Module Name: RunwayApi
online version: https://docs.microsoft.com/en-us/powershell/module/runwayapi/new-group
schema: 2.0.0
---

# New-Group

## SYNOPSIS


## SYNTAX

### CreateExpanded (Default)
```
New-Group -LicenseAllocatedRunners <Int32> -LicenseCanAssignSubLicenses [-Description <String>]
 [-Invitations <IEmailInvitation[]>] [-LicenseExpiration <String>] [-Name <String>] [-ParentGroupId <String>]
 [-PortraitUrl <String>] [-TenantCompanyName <String>] [-TenantExpiration <String>]
 [-TenantOtherDetails <String>] [-TenantPassword <String>] [-TenantPhoneNumber <String>]
 [-TenantPointOfContact <String>] [-TenantRootUser <String>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Create
```
New-Group -Request <ICreateGroupRequest> [-Confirm] [-WhatIf] [<CommonParameters>]
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

### -Description
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

### -Invitations
.
To construct, see NOTES section for INVITATIONS properties and create a hash table.

```yaml
Type: Runway.PowerShell.Models.IEmailInvitation[]
Parameter Sets: CreateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LicenseAllocatedRunners
.

```yaml
Type: System.Int32
Parameter Sets: CreateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LicenseCanAssignSubLicenses
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

### -LicenseExpiration
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

### -Name
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

### -ParentGroupId
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

### -PortraitUrl
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

### -Request
.
To construct, see NOTES section for REQUEST properties and create a hash table.

```yaml
Type: Runway.PowerShell.Models.ICreateGroupRequest
Parameter Sets: Create
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -TenantCompanyName
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

### -TenantExpiration
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

### -TenantOtherDetails
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

### -TenantPassword
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

### -TenantPhoneNumber
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

### -TenantPointOfContact
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

### -TenantRootUser
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

### Runway.PowerShell.Models.ICreateGroupRequest

## OUTPUTS

### System.String

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


INVITATIONS <IEmailInvitation[]>: .
  - `[EmailAddress <String>]`: 
  - `[RoleId <String>]`: 

REQUEST <ICreateGroupRequest>: .
  - `LicenseAllocatedRunners <Int32>`: 
  - `LicenseCanAssignSubLicenses <Boolean>`: 
  - `[Description <String>]`: 
  - `[LicenseExpiration <String>]`: 
  - `[Name <String>]`: 
  - `[PortraitUrl <String>]`: 
  - `[TenantCompanyName <String>]`: 
  - `[TenantExpiration <String>]`: 
  - `[TenantOtherDetails <String>]`: 
  - `[TenantPhoneNumber <String>]`: 
  - `[TenantPointOfContact <String>]`: 
  - `[Invitations <IEmailInvitation[]>]`: 
    - `[EmailAddress <String>]`: 
    - `[RoleId <String>]`: 
  - `[ParentGroupId <String>]`: 
  - `[TenantPassword <String>]`: 
  - `[TenantRootUser <String>]`: 

## RELATED LINKS

