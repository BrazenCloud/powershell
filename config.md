# AutoRest Config

## General Settings

``` yaml
use: "@autorest/powershell@3.0.471"
input-file: swagger.json
powershell: true
output-folder: ./
namespace: Runway.PowerShell
title: PsRunway
prefix: Rw
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
```
