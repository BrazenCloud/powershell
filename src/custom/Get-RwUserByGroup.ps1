Function Get-RwUserByGroup {
    [cmdletbinding()]
    param (
        [string]$GroupId
    )
    $query = @{
        includeSubgroups = $true
        skip = 0
        take = 100
        SortDirection = 0
        filter = @{
            Left = 'Groups'
            Operator = '='
            Right = $GroupId
        }
    }
    (Invoke-RwQueryUser -Query $query).Items
}