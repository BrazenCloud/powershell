# BrazenCloud

[![BrazenCloud](https://img.shields.io/powershellgallery/v/BrazenCloud.svg?style=flat-square&label=BrazenCloud "BrazenCloud")](https://www.powershellgallery.com/packages/BrazenCloud/)

**Starting in v0.3.0, This module was renamed to `BrazenCloud`**

This is the PowerShell module and SDK for [BrazenCloud](https://brazencloud.com). For it to work, you need to have Windows PowerShell 5.1 or PowerShell 6+ and a BrazenCloud account.

If you don't have a BrazenCloud account already, [sign up for a free one](https://portal.brazencloud.com/login?enroll=true).

If you need help with using the BrazenCloud platform, check out our [documentation](https://docs.runway.host).

## Install BrazenCloud

Since BrazenCloud is published to the PowerShell Gallery, use `Install-Module` to install the module:

```powershell
Install-Module BrazenCloud -Repository PSGallery
```

## Authenticate

To authenticate to BrazenCloud, use the `Connect-BrazenCloud` cmdlet. To be prompted for your password (most secure):

```powershell
Connect-BrazenCloud -Email <email>
```

If you wish to pass your password, use the same cmdlet, except convert your password to a secure string:

```powershell
Connect-BrazenCloud -Email <email> -Password (ConvertTo-SecureString '<password>' -AsPlainText -Force)
```

In the future, BrazenCloud will support securely caching the credentials.

## Samples

See the [samples folder](./samples) for inspiration.

## Changelog

### 0.3.0

- **Renamed module from `Runway` to `BrazenCloud` inline with the company rebrand (https://brazencloud.com)**
  - Cmdlet prefix changed from `Rw` to `Bc`. `Get-RwJob` is now `Get-BcJob`, for example.
  - `Connect-Runway` became `Connect-BrazenCloud`
  - Aliases for the old `Invoke-RwCountSubject` cmdlets were removed.
- Built from latest API docs. Includes, but is not limited to:
  - Adding cmdlets for the Datastore feature
  - Adding cmdlets for the remote shell feature.
    - This is not technically supported in PowerShell, but the API calls exist so they are cmdlets.
- Now sets a default group for any cmdlets that accept a `GroupId` parameter.

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
  - `Get-RwUserByGroup`
- Fixed #5 `Get-RwJobRandomJobName`
- Updated with latest prod swagger build (2022-04-13)

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