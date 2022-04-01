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

## Changelog

### 0.1.4

- Converted all `Import-Rw*` cmdlets to `Get-Rw*`
- The Runway url is now configurable with `Connect-Runway`'s `RunwayDomain` parameter
- Converted count cmdlets from `Invoke-RwCountSubject` to `Get-RwSubjectCount`

### 0.1.3

- Added `Connect-Runway`
- Added `Invoke-RwPowerShellCommand`

### 0.1.2

- Updated various resource IDs to be resource specific. I.e. `Id` became `RunnerId` in `Import-RwRunner`

### 0.1.1

- Updated with latest Swagger.json
  - Added `Get-RwGroupHierchyEx`
  - Added `Invoke-RwDownloadJobThreadResult`
- Updated `autorest.powershell` from `3.0.467` -> `3.0.471`

### 0.1.0

- Initial Release