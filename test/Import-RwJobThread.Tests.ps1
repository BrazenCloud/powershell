if(($null -eq $TestName) -or ($TestName -contains 'Import-RwJobThread'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Import-RwJobThread.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Import-RwJobThread' {
    It 'Load' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'LoadViaIdentity' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}
