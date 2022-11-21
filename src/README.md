<!-- region Generated -->
# BrazenCloud
This directory contains the PowerShell module for the BrazenCloud service.

---
## Status
[![BrazenCloud](https://img.shields.io/powershellgallery/v/BrazenCloud.svg?style=flat-square&label=BrazenCloud "BrazenCloud")](https://www.powershellgallery.com/packages/BrazenCloud/)

## Info
- Modifiable: yes
- Generated: all
- Committed: yes
- Packaged: yes

---
## Detail
This module was primarily generated via [AutoRest](https://github.com/Azure/autorest) using the [PowerShell](https://github.com/Azure/autorest.powershell) extension.

## Development
For information on how to develop for `BrazenCloud`, see [how-to.md](how-to.md).
<!-- endregion -->

### AutoRest Configuration

``` yaml
use: "@autorest/powershell@3.0.471"
input-file: ../swagger.json
azure: false
powershell: true
output-folder: ./
clear-output-folder: true
namespace: BrazenCloudSdk.PowerShell
title: BrazenCloud
prefix: Bc
module-version: 0.3.2
metadata:
    authors: ThePoShWolf
    owners: BrazenCloud
    companyName: BrazenCloud
    description: "The PowerShell SDK for the BrazenCloud API"
    copyright: &copy; BrazenCloud. All rights reserved.
    tags: BrazenCloud PowerShell API
    requireLicenseAcceptance: false
    projectUri: https://github.com/brazencloud/powershell
    licenseUri: https://github.com/brazencloud/powershell/blob/main/license.txt
```

### Directives

``` yaml
directive:
  # I'll use this in the future, currently has a weird bug
  - no-inline:
    - JobSchedule
    - RunwayJobThread
  - model-cmdlet:
    - JobSchedule
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
  #    alias: Import-Rw${subject}
  # Convert invoke-counts to get-counts
  # i.e.: Invoke-RwCountRunner becomes Get-RwRunnerCount
  - where:
      verb: Invoke
      subject: Count([a-zA-Z]+)$
    set:
      verb: Get
      subject: $1Count
  #    alias: Invoke-Bc${subject}
  # rename model property
  - where:
      model-name: JobSchedule
      property-name: Schedule
    set:
      property-name: Time
  # Set the url to pull from the RunwayDomain environment variable
  # This makes it so we can configure the domain in the event that
  # we need to talk to staging or when Runway is customer hosted.
  - from: source-file-csharp
    where: $
    transform: >
      if ($documentPath.match(/BrazenCloud.cs/gm)) {
        // line to match:
        // var _url = new global::System.Uri($"https://portal.brazencloud.com{pathAndQuery}");
        // replace portal.brazencloud.com with environmental variable
        let urlRegex = /var _url = [^\r\n;]+portal\.brazencloud\.com[^\r\n;]+;/gmi
        $ = $.replace(urlRegex,'var _url = new global::System.Uri($"https://{System.Environment.GetEnvironmentVariable("BrazenCloudDomain")}{pathAndQuery}");');

        return $;
      } else {
        return $;
      }
  # Sets the -Schedule parameter in Set-BcJobSchedule to be 'Time' when it is expanded
  - from: source-file-csharp
    where: $
    transform: >
      if ($documentPath.match(/SetBcJobSchedule_UpdateExpanded.cs|SetBcJobSchedule_UpdateViaIdentityExpanded.cs|CreateJobRequest.cs|IJobQueryView.cs|RunwayJob.cs|NewBcJob_CreateExpanded.cs/gm)) {
        // line to match:
        // public string Schedule { get => ScheduleBody.Time ?? null; set => ScheduleBody.Time = value; }
        // needs to be:
        // public string Time ...
        let schedRegex = /public string Schedule \{ get \=\> ScheduleBody\.Time [^\r\n]+/gmi
        $ = $.replace(schedRegex, 'public string Time { get => ScheduleBody.Time ?? null; set => ScheduleBody.Time = value; }');

        return $;
      } else {
        return $;
      }
#   - from: source-file-csharp
#     where: $
#     transform: >
#       if ($documentPath.match(/CreateJobRequest.cs|IJobQueryView.cs|RunwayJob.cs/gm)) {
#         // line to match:
#         // public string JobSchedule { get => ((Runway.PowerShell.Models.IJobScheduleInternal)Schedule).Time; set => ((Runway.PowerShell.Models.IJobScheduleInternal)Schedule).Time = value ?? null; }
#         // needs to be:
#         // public string Time ...
#         let schedRegex = /public string JobSchedule \{ get \=\> \(\(Runway\.PowerShell\.Models\.IJobScheduleInternal\)Schedule\)\.Time; [^\r\n]+/gmi
#         $ = $.replace(schedRegex, 'public string Time { get => ((Runway.PowerShell.Models.IJobScheduleInternal)Schedule).Time; set => ((Runway.PowerShell.Models.IJobScheduleInternal)Schedule).Time = value ?? null; }');

#         return $;
#       } else {
#         return $;
#       }
```
