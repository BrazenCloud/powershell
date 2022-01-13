@{
  GUID = '34531e3d-d357-44e8-b1b8-191ce4503ada'
  RootModule = './PsRunway.psm1'
  ModuleVersion = '0.1.1'
  CompatiblePSEditions = 'Core', 'Desktop'
  Author = 'ThePoShWolf'
  CompanyName = 'Runway Software'
  Copyright = ''
  Description = 'The Runway PowerShell SDK'
  PowerShellVersion = '5.1'
  DotNetFrameworkVersion = '4.7.2'
  RequiredAssemblies = './bin/PsRunway.private.dll'
  FormatsToProcess = './PsRunway.format.ps1xml'
  FunctionsToExport = 'Add-RwInvitationToSet', 'Add-RwSetToSet', 'Add-RwTag', 'Build-RwJob', 'Complete-RwRunnerDissolveRunner', 'Enable-RwJob', 'Get-RwAccountAsset', 'Get-RwAccountAssetQuerySchema', 'Get-RwAccountAssetTag', 'Get-RwAssetQuerySchema', 'Get-RwAuthenticationCurrentNodeStatus', 'Get-RwAuthenticationCurrentUser', 'Get-RwAuthenticationPasswordStrength', 'Get-RwConnection', 'Get-RwConnectionQuerySchema', 'Get-RwConnectionTag', 'Get-RwContentPublicDownload', 'Get-RwContentPublicFileInfo', 'Get-RwEndpointAsset', 'Get-RwEndpointAssetQuerySchema', 'Get-RwEndpointAssetTag', 'Get-RwGroup', 'Get-RwGroupHierarchy', 'Get-RwGroupHierarchyEx', 'Get-RwGroupQuerySchema', 'Get-RwGroupTag', 'Get-RwInvitation', 'Get-RwInvitationQuerySchema', 'Get-RwInvitationTag', 'Get-RwJob', 'Get-RwJobQuerySchema', 'Get-RwJobRandomJobName', 'Get-RwJobTag', 'Get-RwJobThread', 'Get-RwJobThreadAutoSpawnThread', 'Get-RwJobThreadLastLog', 'Get-RwJobThreadNodeName', 'Get-RwJobThreadQuerySchema', 'Get-RwJobThreadTag', 'Get-RwRepository', 'Get-RwRepositoryActionContentInfo', 'Get-RwRepositoryQuerySchema', 'Get-RwRepositoryTag', 'Get-RwRole', 'Get-RwRoleQuerySchema', 'Get-RwRoleTag', 'Get-RwRunner', 'Get-RwRunnerQuerySchema', 'Get-RwRunnerTag', 'Get-RwSetMemberCount', 'Get-RwTag', 'Get-RwUser', 'Get-RwUserQuerySchema', 'Get-RwUserTag', 'Import-RwAccountAsset', 'Import-RwConnection', 'Import-RwEndpointAsset', 'Import-RwGroup', 'Import-RwGroupEx', 'Import-RwInvitation', 'Import-RwJob', 'Import-RwJobThread', 'Import-RwRepository', 'Import-RwRole', 'Import-RwRunner', 'Import-RwUser', 'Initialize-RwAuthentication', 'Invoke-RwAnswerInvitation', 'Invoke-RwBeginRunnerDissolveRunner', 'Invoke-RwCountAccountAsset', 'Invoke-RwCountAccountAssetQuery', 'Invoke-RwCountConnection', 'Invoke-RwCountConnectionQuery', 'Invoke-RwCountEndpointAsset', 'Invoke-RwCountEndpointAssetQuery', 'Invoke-RwCountGroup', 'Invoke-RwCountGroupQuery', 'Invoke-RwCountInvitation', 'Invoke-RwCountInvitationQuery', 'Invoke-RwCountJob', 'Invoke-RwCountJobQuery', 'Invoke-RwCountJobThread', 'Invoke-RwCountJobThreadQuery', 'Invoke-RwCountRepository', 'Invoke-RwCountRepositoryQuery', 'Invoke-RwCountRole', 'Invoke-RwCountRoleQuery', 'Invoke-RwCountRunner', 'Invoke-RwCountRunnerQuery', 'Invoke-RwCountUser', 'Invoke-RwCountUserQuery', 'Invoke-RwDissolveEndpointAssetEndpoint', 'Invoke-RwDownloadContent', 'Invoke-RwDownloadContentPublicFile', 'Invoke-RwDownloadJobThreadResult', 'Invoke-RwDownloadRepositoryAction', 'Invoke-RwEnrollAuthentication', 'Invoke-RwHasInvitation', 'Invoke-RwInviteInvitationUser', 'Invoke-RwLiveAuthenticationSignup', 'Invoke-RwLoginAuthentication', 'Invoke-RwLogoutAuthentication', 'Invoke-RwMapAsset', 'Invoke-RwQueryAccountAsset', 'Invoke-RwQueryAssetMap', 'Invoke-RwQueryConnection', 'Invoke-RwQueryEndpointAsset', 'Invoke-RwQueryGroup', 'Invoke-RwQueryGroupEx', 'Invoke-RwQueryInvitation', 'Invoke-RwQueryJob', 'Invoke-RwQueryJobThread', 'Invoke-RwQueryRepository', 'Invoke-RwQueryRole', 'Invoke-RwQueryRunner', 'Invoke-RwQueryUser', 'Invoke-RwShellRemoteShellCancel', 'Invoke-RwShellRemoteShellPing', 'Invoke-RwShellRemoteShellWrite', 'Invoke-RwSignupAuthentication', 'Invoke-RwSocketClient', 'Invoke-RwUploadContent', 'Invoke-RwVersionContent', 'New-RwAuthenticationUtilityNode', 'New-RwConnection', 'New-RwEnrollmentSession', 'New-RwGroup', 'New-RwJob', 'New-RwRepositoryAction', 'New-RwRole', 'New-RwSet', 'New-RwUser', 'Ping-RwAuthentication', 'Remove-RwAccountAsset', 'Remove-RwConnection', 'Remove-RwEndpointAsset', 'Remove-RwGroup', 'Remove-RwInvitation', 'Remove-RwJob', 'Remove-RwJobThread', 'Remove-RwRole', 'Remove-RwRunner', 'Remove-RwSet', 'Remove-RwSetFromSet', 'Remove-RwTag', 'Remove-RwUser', 'Request-RwLog', 'Request-RwResultActionResult', 'Reset-RwAuthenticationPassword', 'Save-RwAccountAssetQueryToSet', 'Save-RwConnectionQueryToSet', 'Save-RwEndpointAssetQueryToSet', 'Save-RwGroupQueryToSet', 'Save-RwInvitationQueryToSet', 'Save-RwJobQueryToSet', 'Save-RwJobThreadQueryToSet', 'Save-RwRepositoryQueryToSet', 'Save-RwRoleQueryToSet', 'Save-RwRunnerQueryToSet', 'Save-RwUserQueryToSet', 'Send-RwResultActionResultReady', 'Send-RwResultDownload', 'Send-RwResultDownloadError', 'Set-RwConnection', 'Set-RwGroup', 'Set-RwJob', 'Set-RwJobAction', 'Set-RwJobSchedule', 'Set-RwRole', 'Set-RwUser', 'Step-RwJobThread', 'Test-RwAuthenticationEmailUnique', 'Test-RwResultActionResult', '*'
  AliasesToExport = '*'
  PrivateData = @{
    PSData = @{
      Tags = ''
      LicenseUri = ''
      ProjectUri = ''
      ReleaseNotes = ''
    }
  }
}
