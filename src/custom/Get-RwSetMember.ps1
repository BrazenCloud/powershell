Function Get-RwSetMember {
    [cmdletbinding()]
    param (
        [string]$SetId
    )

    $query = @{
         includeSubgroups = $true
         skip = 0
         take = 100
         sortDirection = 0
         RootContainerId = $SetId
     }
     (Invoke-RwQueryEndpointAsset -Query $query).Items
}