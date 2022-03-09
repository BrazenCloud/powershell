Function Connect-Runway {
    [cmdletbinding()]
    [OutputType()]
    param (
        [Parameter(Mandatory)]
        [string]$Email,
        [Parameter(Mandatory)]
        [string]$Password
    )
    $s = Invoke-RwLoginAuthentication -Email $Email -Password $Password -Remember
    $env:RunwaySessionTaken = $s.Session
}