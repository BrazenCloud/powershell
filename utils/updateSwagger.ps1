param (
    [string]$SwaggerPath,
    [string]$OutFile
)

<#

There are some tasks that can't be accomplished with directives, so this script
will clean them up. Currently it accomplishes the following:

- Adds the global produces block
  - Required for AutoRest
- switches subject/{id} to subject/{subjectId}
  - Makes the cmdlets easier to use
- Places the platform definition into the parameters block
  - Simplifies the JSON
- Replace opIds ending with _All to _List
  - Work around a bug with AutoRest
#>

$swagger = Get-Content $SwaggerPath | ConvertFrom-Json -AsHashtable

# Add produces

$swagger['produces'] = @("application/json")

# Update paths and pathIds to use subjectId
# i.e. would convert id to runnerId

$idPaths = $swagger.paths.Keys | Where-Object {$_ -like '*{id}*'}
foreach ($path in $idPaths) {
    $subject = $path -match '\/(?<subject>[a-z]+)(\/ex)?\/\{id\}' ? $Matches.subject.TrimEnd('s') : 'UNKNOWN'
    #"$path : $subject"
    foreach ($method in $swagger.paths[$path].Keys) {
        ($swagger.paths[$path][$method].parameters | Where-Object {$_['name'] -eq 'id'}).name = "$subject`Id"
    }
    $newPath = $path -replace '\{id\}',"{$subject`Id}"
    $swagger.paths[$newPath] = $swagger.paths[$path]
    $swagger.paths.Remove($path)
}

# Move platform to parameters
# Use object from definitions

# lookup platform in definitions
$platform = $swagger.definitions['Platform'].Clone()
# add name, in, x-nullable
$platform['name'] = 'platform'
$platform['in'] = 'query'
$platform['x-nullable'] = $false
# remove x-enumNames
$platform.Remove('x-enumNames')
# add to parameters
if ($swagger.Keys -notcontains 'parameters') {
    $swagger['parameters'] = @{}
}
$swagger['parameters']['platform'] = $platform
# Replace parameter references
foreach ($path in $swagger.paths.Keys) {
    foreach ($method in $swagger.paths[$path].Keys) {
        $swagger.paths[$path][$method]['parameters'] | ForEach-Object {
            if ($_.Keys -contains 'name') {
                if ($_['name'] -eq 'platform') {
                    $_.Clear()
                    $_['$ref'] = '#/parameters/platform'
                }
            }
        }
    }
}

# Replace opIds ending with _All to _List

foreach ($path in $swagger.paths.Keys) {
    foreach ($method in $swagger.paths[$path].Keys) {
        if ($swagger.paths[$path][$method].operationId -like '*_All') {
            $swagger.paths[$path][$method].operationId = $swagger.paths[$path][$method].operationId -replace '_All$','_List'
        }
    }
}

# Output the file

$swagger | ConvertTo-Json -Depth 10 | Out-File $OutFile -Encoding utf8