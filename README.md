<!-- region Generated -->
# PsRunway
This directory contains the PowerShell module for the PsRunway service.

## Install PsRunway

Since PsRunway is published to the PowerShell Gallery, use `Install-Module` to install the module:

```powershell
Install-Module PsRunway -Repository PSGallery
```

## Authenticate

To authenticate to Runway, use the `Connect-Runway` cmdlet. To be prompted for your password (most secure):

```powershell
Connect-Runway -Email <email>
```

If you wish to pass your password, use the same cmdlet, except convert your password to a secure string:

```powershell
Connect-Runway -Email <email> -Password (ConvertTo-SecureString '<password>' -AsPlainText -Force)
```

In the future, PSRunway will support securely caching the credentials.

## Samples

See the [samples folder](./samples) for inspiration.

---
## Status
[![PsRunway](https://img.shields.io/powershellgallery/v/PsRunway.svg?style=flat-square&label=PsRunway "PsRunway")](https://www.powershellgallery.com/packages/PsRunway/)

## Info
- Modifiable: yes
- Generated: all
- Committed: yes
- Packaged: yes

---
## Detail
This module was primarily generated via [AutoRest](https://github.com/Azure/autorest) using the [PowerShell](https://github.com/Azure/autorest.powershell) extension.

## Development
For information on how to develop for `PsRunway`, see [how-to.md](how-to.md).
<!-- endregion -->
