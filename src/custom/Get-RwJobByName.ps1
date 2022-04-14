Function Get-RwJobByName {
    [cmdletbinding(
        DefaultParameterSetName = 'ByName'
    )]
    param (
        [Parameter(
            ParameterSetName = 'ByName',
            Position = 0
        )]
        [Alias('Name')]
        [string[]]$JobName
    )
    if ($JobName.Count -gt 1) {
        $filterChildren = foreach ($name in $JobName) {
            @{
                Left = 'Name'
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
                Left = 'Name'
                Operator = '='
                Right = $JobName[0]
            }
        }
    }
    (Invoke-RwQueryJob -Query $query).Items
}