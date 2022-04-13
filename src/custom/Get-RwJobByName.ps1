Function Get-RwJobByName {
    [cmdletbinding()]
    param (
        [Alias('Name')]
        [string]$JobName
    )
    $query = @{
        includeSubgroups = $true
        skip = 0
        take = 100
        SortDirection = 0
        filter = @{
            Left = 'Name'
            Operator = '='
            Right = $JobName
        }
    }
    (Invoke-RwQueryJob -Query $query).Items
}