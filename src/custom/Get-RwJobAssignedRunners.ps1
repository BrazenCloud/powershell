Function Get-RwJobAssignedRunners {
    [CmdletBinding(
        DefaultParameterSetName = 'ByName'
    )]
    param (
        [Parameter(
            ParameterSetName = 'ByName'
        )]
        [string]$JobName,
        [Parameter(
            ParameterSetName = 'ById'
        )]
        [string]$JobId
    )
    if ($PSCmdlet.ParameterSetName -eq 'ByName') {
        $JobId = (Get-RwJobByName -JobName $JobName).Id
    }
    $setId = (Get-RwJob -JobId $JobId).EndpointSetId
    $query = @{
        includeSubgroups = $true
        skip = 0
        take = 100
        sortDirection = 0
        RootContainerId = $setId
    }
    (Invoke-RwQueryEndpointAsset -Query $query).Items
}