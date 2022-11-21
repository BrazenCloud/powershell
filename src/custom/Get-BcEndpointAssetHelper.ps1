Function Get-BcEndpointAssetHelper {
    [OutputType([BrazenCloudSdk.PowerShell.Models.IEndpointAssetQueryView[]])]
    [cmdletbinding(
        DefaultParameterSetName = 'all'
    )]
    param (
        [string]$GroupId,
        [Parameter(
            ParameterSetName = 'noRunner'
        )]
        [switch]$NoRunner,
        [Parameter(
            ParameterSetName = 'hasRunner'
        )]
        [switch]$HasRunner,
        [Parameter(
            ParameterSetName = 'all'
        )]
        [switch]$All
    )
    # build the base query
    $query = @{
        includeSubgroups = $true
        skip             = 0
        take             = 1000
        sortDirection    = 0
    }

    # add the filter
    $query['filter'] = switch ($PSCmdlet.ParameterSetName) {
        'all' {
            $null
        }
        'noRunner' {
            @{
                Left     = 'HasRunner'
                Operator = '='
                Right    = 'False'
            }
        }
        'hasRunner' {
            @{
                Left     = 'HasRunner'
                Operator = '='
                Right    = 'True'
            }
        }
    }

    # specify group, if passed
    if ($PSBoundParameters.Keys -contains 'GroupId') {
        $query['rootContainerId'] = $GroupId
    }

    # get the first page of items
    $ea = Invoke-BcQueryEndpointAsset -Query $query
    $count = $ea.Items.Count
    $ea.Items

    # Get the remaining pages
    while ($count -lt $ea.FilteredCount) {
        $query.skip = $query.skip + $query.take
        $ea = Invoke-BcQueryEndpointAsset -Query $query
        $count += $ea.Items.Count
        $ea.Items
    }
}