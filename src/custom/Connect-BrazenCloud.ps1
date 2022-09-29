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

    $fileName = if ($PSVersionTable.PSVersion -lt [version]'6.0.0' -or $IsWindows) {
        'runway.exe'
    } else {
        'runway'
    }

    $env:BrazenCloudUtilityPath = "$PSScriptRoot\$fileName"

    if (-not ($SkipExecutableDownload.IsPresent) -and -not (Test-Path $env:BrazenCloudUtilityPath)) {
        Get-BcExecutable -OutFile $env:BrazenCloudUtilityPath
    }
    if (Test-Path $env:BrazenCloudUtilityPath) {
        & $env:BrazenCloudUtilityPath -N -S $Domain login -u $Email -p ([pscredential]::new('blah', $Password).GetNetworkCredential().Password) | Out-Null
    }
}