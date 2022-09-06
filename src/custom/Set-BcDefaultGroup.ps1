Function Set-BcDefaultGroup {
    [cmdletbinding()]
    param (
        [string]$GroupId
    )
    $PSDefaultParameterValues = @{
        '*-Bc*:GroupId' = $GroupId
    }
}