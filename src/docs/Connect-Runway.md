---
external help file:
Module Name: Runway
online version: https://docs.microsoft.com/en-us/powershell/module/runway/connect-runway
schema: 2.0.0
---

# Connect-Runway

## SYNOPSIS

Authenticate to the Runway API.

## SYNTAX

```
Connect-Runway [-Email] <String> [-Password] <SecureString> [[-RunwayDomain] <String>] [<CommonParameters>]
```

## DESCRIPTION

Authenticate to the Runway API using an email and password. Optionally, set a custom Runway domain.

## EXAMPLES

### Example 1: Default Authentication
```powershell
PS C:\> Connect-Runway -Email email@domain.com
```

This example will prompt for a password.

### Example 2: Pass the password
```powershell
PS C:\> Connect-Runway -Email email@domain.com -Password (ConvertTo-SecureString 'Password' -AsPlainText -Force)
```

When successful, no output is returned.

### Example 3: Custom Domain
```powershell
PS C:\> Connect-Runway -Email email@domain.com -RunwayDomain 'runway.domain.com'
```

This example authenticates to a custom Runway instance. All future cmdlets will communicate to the Runway domain specified in this cmdlet.

## PARAMETERS

### -Email


```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Password


```yaml
Type: System.Security.SecureString
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RunwayDomain


```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String

### System.Security.SecureString

## OUTPUTS

## NOTES

ALIASES

## RELATED LINKS
