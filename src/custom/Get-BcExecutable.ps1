Function Get-BcExecutable {
    [cmdletbinding()]
    param (
        [Parameter(Mandatory)]
        [string]$OutFile
    )

    $platform = if ($PSVersionTable.PSVersion -lt [version]'6.0.0' -or $IsWindows) {
        if (Test-Path 'C:\Program Files (x86)') {
            'windows64'
        } else {
            'windows32'
        }
    } elseif ($IsLinux) {
        $idLike = (Get-Content /etc/*-release | ConvertFrom-StringData).ID_LIKE -split ' '
        :idlike foreach ($il in $idLike) {
            switch -Regex ($il) {
                'rhel|fedora' {
                    Write-Warning 'RHEL and Fedora are not currently supported for streaming. All other SDK functions will still work.'
                    break :idlike
                }
                'debian' {
                    if (arch -eq 'x86_64') {
                        'debian64'
                    } else {
                        'debian32'
                    }
                }
                default {
                    Write-Warning 'Your OS may not be supported for the streaming feature. Downloading the general linux executable...'
                    if (arch -eq 'x86_64') {
                        'linux64'
                    } else {
                        'linux32'
                    }
                }
            }
        }
    }

    if ($null -ne $platform) {
        Write-Verbose "Downloading the '$platform' binary..."
        Invoke-BcDownloadContentPublicFile -Platform $Platform -Key 'runway' -OutFile $OutFile
    }
}