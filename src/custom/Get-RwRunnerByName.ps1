Function Get-RwRunnerByName {
    [cmdletbinding(
        DefaultParameterSetName = 'ByName'
    )]
    param (
        [Parameter(
            ParameterSetName = 'ByName'
        )]
        [Alias('Name','RunnerName')]
        [string[]]$AssetName
    )
    if ($AssetName.Count -gt 1) {
        $filterChildren = foreach ($name in $AssetName) {
            @{
                Left = 'AssetName'
                Operator = '='
                Right = $name
            }
        }
        $query = @{
            includeSubgroups = $true
            skip = 0
            take = 100
            sortDirection = 0
            filter = @{
                children = $filterChildren
                operator = 'OR'
            }
        }
    } else {
        $query = @{
            includeSubgroups = $true
            skip = 0
            take = 100
            SortDirection = 0
            filter = @{
                Left = 'AssetName'
                Operator = '='
                Right = $AssetName[0]
            }
        }
    }
    (Invoke-RwQueryRunner -Query $query).Items
}