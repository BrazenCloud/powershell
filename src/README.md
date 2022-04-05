<!-- region Generated -->
# PsRunway
This directory contains the PowerShell module for the PsRunway service.

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

### AutoRest Configuration

``` yaml
use: "@autorest/powershell@3.0.471"
input-file: ../swagger.json
powershell: true
output-folder: ./
clear-output-folder: true
namespace: Runway.PowerShell
title: PsRunway
prefix: Rw
module-version: 0.1.4
metadata:
    authors: ThePoShWolf
    owners: Runway Software
    companyName: Runway Software
    description: 'Runway API's PowerShell SDK'
    copyright: &copy; Runway Software. All rights reserved.
    tags: Runway PowerShell
    requireLicenseAcceptance: false
    projectUri: https://github.com/runway-software/runway-powershell
```

### Directives

``` yaml
directive:
  # Update Id to be SubjectId
  # This doesn't currently work, bug submitted
  # - where:
  #    verb: Import
  #    parameter-name: Id
  #  set:
  #    parameter-name: ${subject}Id
  # Imports should be Gets
  # They becomes Import-* due to how AutoRest correlates the OperationId to a verb
  - where:
      verb: Import
    set:
      verb: Get
  # Convert invoke-counts to get-counts
  # i.e.: Invoke-RwCountRunner becomes Get-RwRunnerCount
  - where:
      verb: Invoke
      subject: Count([a-zA-Z]+)$
    set:
      verb: Get
      subject: $1Count
  # Set the url to pull from the RunwayDomain environment variable
  # This makes it so we can configure the domain in the event that
  # we need to talk to staging or when Runway is customer hosted.
  - from: source-file-csharp
    where: $
    transform: >
      if ($documentPath.match(/PsRunway.cs/gm))
      {
        // line to match:
        // var _url = new global::System.Uri($"https://portal.runway.host{pathAndQuery}");
        // replace portal.runway.host with environmental variable
        let urlRegex = /var _url = [^\r\n;]+portal\.runway\.host[^\r\n;]+;/gmi
        $ = $.replace(urlRegex,'var _url = new global::System.Uri($"https://{System.Environment.GetEnvironmentVariable("RunwayDomain")}{pathAndQuery}");');

        return $;
      } else {
        return $;
      }
```
