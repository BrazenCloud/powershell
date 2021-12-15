if(($null -eq $TestName) -or ($TestName -contains 'Invoke-RwDownloadContent'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-RwDownloadContent.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-RwDownloadContent' {
    It 'Download' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'DownloadViaIdentity' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}
