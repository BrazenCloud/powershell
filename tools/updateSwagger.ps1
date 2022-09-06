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
- Remove opIds ending with ForPie
  - They are specific to the UI pie chart and AutoRest creates the cmdlets
    with the same name and parameter set.
- Remove file responses that don't actually return files
- Remove Produces from Job_GetRandomJobName
#>

$swagger = Get-Content $SwaggerPath | ConvertFrom-Json -AsHashtable

# Add produces

$swagger['produces'] = @("application/json")

# Update paths and pathIds to use subjectId
# i.e. would convert id to runnerId

$idPaths = $swagger.paths.Keys | Where-Object { $_ -like '*{id}*' }
foreach ($path in $idPaths) {
    $subject = $path -match '\/(?<subject>[a-z]+)(\/ex)?\/\{id\}' ? $Matches.subject.TrimEnd('s') : 'UNKNOWN'
    #"$path : $subject"
    foreach ($method in $swagger.paths[$path].Keys) {
        ($swagger.paths[$path][$method].parameters | Where-Object { $_['name'] -eq 'id' }).name = "$subject`Id"
    }
    $newPath = $path -replace '\{id\}', "{$subject`Id}"
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
            $swagger.paths[$path][$method].operationId = $swagger.paths[$path][$method].operationId -replace '_All$', '_List'
        }
    }
}

# Remove paths ending with ForPie

$newPathHt = @{}
foreach ($path in $swagger.paths.Keys) {
    if ($path -notlike '*ForPie') {
        $newPathHt[$path] = $swagger.paths[$path]
    }
}
$swagger.paths = $newPathHt

# Remove file responses that don't actually return files

<# build the $paths var:

foreach ($path in $swagger.paths.Keys) {
    $methods = foreach ($method in $swagger.paths[$path].Keys) {
        if ($swagger.paths[$path][$method].responses['200'].schema.type -eq 'file') {
            [pscustomobject]@{
                method = $method
                opid = $swagger.paths[$path][$method].operationId
            }
        }
    }
    if ($methods.count -gt 0) {
        "'$path' = @( '$($methods.method -join "','")' ) # $($methods.opid -join ',')"
    }
}

#>

$paths = @{
    '/api/v2/results/error/{notifyId}'    = @( 'put' ) # Results_NotifyDownloadError
    '/api/v2/repository'                  = @( 'delete' ) # Repository_DeleteBySet
    '/api/v2/runners'                     = @( 'delete' ) # Runner_DeleteBySet
    '/api/v2/endpoints'                   = @( 'delete' ) # EndpointAsset_DeleteBySet
    '/api/v2/endpoints/dissolve'          = @( 'put' ) # EndpointAsset_DissolveEndpoints
    #'/api/v2/auth/signup'                 = @( 'post' ) # Authentication_Signup
    '/api/v2/endpoints/{endpointId}'      = @( 'delete' ) # EndpointAsset_DeleteById
    '/api/v2/auth/logout'                 = @( 'post' ) # Authentication_Logout
    '/api/v2/results/{notifyId}'          = @( 'put' ) # Results_NotifyActionResultReady
    '/api/v2/jobs/{jobId}/enable'         = @( 'put' ) # Job_EnableJob
    '/api/v2/jobs'                        = @( 'delete' ) # Job_DeleteBySet
    '/api/v2/shell/ping'                  = @( 'post' ) # RemoteShell_ShellPing
    '/api/v2/users'                       = @( 'delete' ) # User_DeleteBySet
    '/api/v2/roles/{roleId}'              = @( 'put', 'delete' ) # Role_Update,Role_DeleteById
    '/api/v2/threads/job/{jobId}'         = @( 'delete' ) # JobThread_DeleteByJob
    '/api/v2/jobs/{jobId}'                = @( 'delete' ) # Job_DeleteById
    '/api/v2/runners/{runnerId}'          = @( 'delete' ) # Runner_DeleteById
    '/api/v2/connections/{connectionId}'  = @( 'put', 'delete' ) # Connection_Update,Connection_DeleteById
    '/api/v2/invitations'                 = @( 'post', 'put', 'delete' ) # Invitation_InviteUsers,Invitation_AnswerInvitation,Invitation_DeleteBySet
    '/api/v2/runners/dissolve'            = @( 'put' ) # Runner_BeginDissolveRunners
    '/api/v2/threads/step'                = @( 'put' ) # JobThread_StepJobThread
    '/api/v2/accounts/{accountId}'        = @( 'delete' ) # AccountAsset_DeleteById
    '/api/v2/jobs/{jobId}/actions'        = @( 'put' ) # Job_UpdateActions
    '/api/v2/invitations/adduserstogroup' = @( 'post' ) # Invitation_AddUsersToGroup
    '/api/v2/groups'                      = @( 'delete' ) # Group_DeleteBySet
    '/api/v2/users/{userId}'              = @( 'put', 'delete' ) # User_Update,User_DeleteById
    '/api/v2/groups/{groupId}'            = @( 'put', 'delete' ) # Group_Update,Group_DeleteById
    '/api/v2/accounts'                    = @( 'delete' ) # AccountAsset_DeleteBySet
    '/api/v2/repository/action'           = @( 'post' ) # Repository_CreateAction
    '/api/v2/results/progress/{notifyId}' = @( 'put' ) # Results_NotifyDownloadInProgress
    '/api/v2/roles'                       = @( 'delete' ) # Role_DeleteBySet
    '/api/v2/sets/{setId}'                = @( 'delete' ) # Set_DeleteSet
    '/api/v2/tags'                        = @( 'put', 'delete' ) # Tag_AddTags,Tag_DeleteTags
    '/api/v2/connections'                 = @( 'delete' ) # Connection_DeleteBySet
    '/api/v2/assets/map'                  = @( 'post' ) # Asset_MapAssets
    '/api/v2/jobs/{jobId}/schedule'       = @( 'put' ) # Job_UpdateSchedule
    '/api/v2/shell'                       = @( 'delete' ) # RemoteShell_ShellCancel
    '/api/v2/runners/dissolved'           = @( 'delete' ) # Runner_CompleteDissolveRunner
}

foreach ($path in $paths.Keys) {
    foreach ($method in $paths[$path]) {
        $swagger.paths[$path][$method].responses['200'].Remove('schema')
    }
}

# Remove Produces from Job_GetRandomJobName

$jobNamePath = '/api/v2/jobs/name'
$jobNameMethod = 'get'
$swagger.paths[$jobNamePath][$jobNameMethod].Remove('produces')

# Sort objects

$toSort = 'paths', 'definitions', 'parameters'
foreach ($prop in $toSort) {
    $sortedProp = [ordered]@{}
    foreach ($item in $swagger.$prop.Keys | Sort-Object) {
        $sortedProp[$item] = $swagger.$prop[$item]
    }
    $swagger.$prop = $sortedProp
}

# Output the file, keeping properties in order

$swagger | Select-Object 'x-generator', swagger, info, host, schemes, produces, parameters, paths, definitions, * -ErrorAction SilentlyContinue | ConvertTo-Json -Depth 10 | Out-File $OutFile -Encoding utf8