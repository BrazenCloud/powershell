# Runway

[![Runway](https://img.shields.io/powershellgallery/v/Runway.svg?style=flat-square&label=Runway "Runway")](https://www.powershellgallery.com/packages/Runway/)

**Starting in v0.2.0, Runway was renamed from PsRunway to Runway.**

This is the PowerShell module and SDK for [Runway](https://runway.host). For it to work, you need to have Windows PowerShell 5.1 or PowerShell 6+ and a Runway account.

If you don't have a Runway account already, [sign up for a free one](https://portal.runway.host/login?enroll=true).

If you need help with using the Runway platform, check out our [documentation](https://docs.runway.host).

## Install Runway

Since Runway is published to the PowerShell Gallery, use `Install-Module` to install the module:

```powershell
Install-Module Runway -Repository PSGallery
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

In the future, Runway will support securely caching the credentials.

## Samples

See the [samples folder](./samples) for inspiration.

## Changelog

### 0.2.0

- **Renamed the module from `PsRunway` to `Runway`**
- Converted all `Import-Rw*` cmdlets to `Get-Rw*`
- The Runway url is now configurable with `Connect-Runway`'s `RunwayDomain` parameter
- Converted count cmdlets from `Invoke-RwCountSubject` to `Get-RwSubjectCount`
- Repository organization
- Fixes #2. JobSchedule now has a `Time` property.
  - This is present on `Set-RwJobSchedule`
- Fixes #6. Removes unneeded `-OutFile` parameters from various cmdlets
- Added a collection of query based helper cmdlets:
  - `Get-RwConnectionByName`
  - `Get-RwEndpointByTag`
  - `Get-RwJobAssignedRunners`
  - `Get-RwJobByName`
  - `Get-RwRunnerByName`
  - `Get-RwSetMember`

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