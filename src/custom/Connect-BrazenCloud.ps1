Function Connect-BrazenCloud {
    [cmdletbinding()]
    [OutputType()]
    param (
        [Parameter(Mandatory)]
        [string]$Email,
        [Parameter(Mandatory)]
        [SecureString]$Password,
        [string]$Domain = 'portal.brazencloud.com'
    )
    $env:BrazenCloudDomain = $Domain

    $s = Invoke-BcLoginAuthentication -Email $Email -Password ([pscredential]::new('blah', $Password).GetNetworkCredential().Password) -Remember
    $env:BrazenCloudSessionToken = $s.Session

    Set-BcDefaultGroup -GroupId (Get-BcAuthenticationCurrentUser).HomeContainerId
}