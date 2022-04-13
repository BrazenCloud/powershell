Function Get-RwConnectionByName {
    [CmdletBinding()]
    param (
        [Alias('Name')]
        [string]$ConnectionName
    )
    $query = @{
        includeSubgroups = $true
        skip = 0
        take = 100
        SortDirection = 0
        filter = @{
            Left = 'Name'
            Operator = '='
            Right = $ConnectionName
        }
    }
    (Invoke-RwQueryConnection -Query $query).Items
}