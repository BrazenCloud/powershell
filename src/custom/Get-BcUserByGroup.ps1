Function Get-BcUserByGroup {
    [OutputType([BrazenCloudSdk.PowerShell.Models.IUserQueryView[]])]
    [cmdletbinding()]
    param (
        [string]$GroupId
    )
    $query = @{
        includeSubgroups = $true
        skip             = 0
        take             = 100
        SortDirection    = 0
        filter           = @{
            Left     = 'Groups'
            Operator = '='
            Right    = $GroupId
        }
    }
    (Invoke-BcQueryUser -Query $query).Items
}