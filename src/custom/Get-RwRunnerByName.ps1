Function Get-RwRunnerByName {
    [cmdletbinding()]
    param (
        [Alias('Name','RunnerName')]
        [string]$AssetName
    )
    $query = @{
        includeSubgroups = $true
        skip = 0
        take = 100
        SortDirection = 0
        filter = @{
            Left = 'AssetName'
            Operator = '='
            Right = $AssetName
        }
    }
    (Invoke-RwQueryRunner -Query $query).Items
}