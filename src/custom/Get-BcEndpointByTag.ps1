Function Get-BcEndpointByTag {
    [OutputType([BrazenCloudSdk.PowerShell.Models.IEndpointAssetQueryView[]])]
    [CmdletBinding(
        DefaultParameterSetName = 'ByTags'
    )]
    param (
        [Parameter(
            ParameterSetName = 'ByTags',
            Position = 0
        )]
        [string[]]$Tags
    )

    if ($tags.Count -gt 1) {
        $filterChildren = foreach ($tag in $tags) {
            @{
                Left     = 'Tags'
                Operator = '='
                Right    = $tag
            }
        }
        $query = @{
            includeSubgroups = $true
            skip             = 0
            take             = 100
            sortDirection    = 0
            filter           = @{
                children = $filterChildren
                operator = 'AND'
            }
        }
    } else {
        $query = @{
            includeSubgroups = $true
            skip             = 0
            take             = 100
            sortDirection    = 0
            filter           = @{
                Left     = 'Tags'
                Operator = '='
                Right    = $Tags[0]
            }
        }
    }
    (Invoke-BcQueryEndpointAsset -Query $query).Items
}