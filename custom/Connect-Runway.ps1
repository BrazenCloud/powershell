Function Connect-Runway {
    [cmdletbinding()]
    [OutputType()]
    param (
        [Parameter(Mandatory)]
        [string]$Email,
        [Parameter(Mandatory)]
        [SecureString]$Password
    )
    $s = Invoke-RwLoginAuthentication -Email $Email -Password ([pscredential]::new('blah',$Password).GetNetworkCredential().Password) -Remember
    $env:RunwaySessionToken = $s.Session
}