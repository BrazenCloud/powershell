<!-- region Generated -->
# PsRunway
This directory contains the PowerShell module for the PsRunway service.

## Install PsRunway

Since PsRunway is published to the PowerShell Gallery, use `Install-Module` to install the module:

```powershell
Install-Module PsRunway -Repository PSGallery
```

## Authenticate

To authenticate to Runway, use the `Invoke-RwLoginAuthentication` cmdlet and then store the session token in the `RunwaySessionToken` environment variable:

```powershell
$session = Invoke-RwLoginAuthentication -Remember -Email <email> -Password <password>
$env:RunwaySessionToken = $session.Session
```

The PsRunway module uses the environment variable when creating the authentication header. The plan is to improve this and make it transparent.

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
