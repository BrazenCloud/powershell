if(($null -eq $TestName) -or ($TestName -contains 'Invoke-BcSocket2Client'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-BcSocket2Client.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-BcSocket2Client' {
    It 'Socket2' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'Socket2ViaIdentity' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}
