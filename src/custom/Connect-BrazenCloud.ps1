Function Connect-BrazenCloud {
    [cmdletbinding()]
    [OutputType()]
    param (
        [Parameter(Mandatory)]
        [string]$Email,
        [Parameter(Mandatory)]
        [SecureString]$Password,
        [string]$Domain = 'portal.brazencloud.com',
        [int]$TTL = 20,
        [switch]$SkipExecutableDownload
    )
    $env:BrazenCloudDomain = $Domain

    $s = Invoke-BcLoginAuthentication -Email $Email -Password ([pscredential]::new('blah', $Password).GetNetworkCredential().Password) -Remember -Ttl $TTL
    $env:BrazenCloudSessionToken = $s.Session

    Set-BcDefaultGroup -GroupId (Get-BcAuthenticationCurrentUser).HomeContainerId

    if (-not ($SkipExecutableDownload.IsPresent) -and -not (Test-Path $PSScriptRoot\runway)) {
        Get-BcExecutable -OutFile $PSScriptRoot/runway
        if (Test-Path $PSScriptRoot\runway) {
            & $PSScriptRoot\runway -N -S $Domain login -u $Email -p ([pscredential]::new('blah', $Password).GetNetworkCredential().Password)
        }
    }
}