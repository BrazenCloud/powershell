if(($null -eq $TestName) -or ($TestName -contains 'Invoke-RwHasInvitation'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-RwHasInvitation.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-RwHasInvitation' {
    It 'Has' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'HasViaIdentity' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}
