if(($null -eq $TestName) -or ($TestName -contains 'Invoke-BcQueryRunner'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-BcQueryRunner.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-BcQueryRunner' {
    It 'Query' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'Query1' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'QueryViaIdentity1' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'QueryViaIdentity' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'Query2' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'QueryExpanded' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}
