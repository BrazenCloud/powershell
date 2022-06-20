Function Get-BcSetMember {
    [cmdletbinding(
        DefaultParameterSetName = 'ById'
    )]
    param (
        [Parameter(
            ParameterSetName = 'ById',
            Position = 0
        )]
        [string]$SetId
    )

    $query = @{
         includeSubgroups = $true
         skip = 0
         take = 100
         sortDirection = 0
         RootContainerId = $SetId
     }
     (Invoke-BcQueryEndpointAsset -Query $query).Items
}