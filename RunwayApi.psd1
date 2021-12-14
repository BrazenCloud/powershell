@{
  GUID = '42ac5520-c4f3-43db-92d9-12d6f7426780'
  RootModule = './RunwayApi.psm1'
  ModuleVersion = '0.1.0'
  CompatiblePSEditions = 'Core', 'Desktop'
  Author = ''
  CompanyName = ''
  Copyright = ''
  Description = ''
  PowerShellVersion = '5.1'
  DotNetFrameworkVersion = '4.7.2'
  RequiredAssemblies = './bin/RunwayApi.private.dll'
  FormatsToProcess = './RunwayApi.format.ps1xml'
  FunctionsToExport = 'Add-InvitationToSet', 'Add-SetToSet', 'Add-Tag', 'Build-Job', 'Complete-RunnerDissolveRunner', 'Enable-Job', 'Get-AccountAsset', 'Get-AccountAssetQuerySchema', 'Get-AccountAssetTag', 'Get-AssetQuerySchema', 'Get-AuthenticationCurrentNodeStatus', 'Get-AuthenticationCurrentUser', 'Get-AuthenticationPasswordStrength', 'Get-Connection', 'Get-ConnectionQuerySchema', 'Get-ConnectionTag', 'Get-ContentPublicDownload', 'Get-ContentPublicFileInfo', 'Get-EndpointAsset', 'Get-EndpointAssetQuerySchema', 'Get-EndpointAssetTag', 'Get-Group', 'Get-GroupHierarchy', 'Get-GroupQuerySchema', 'Get-GroupTag', 'Get-Invitation', 'Get-InvitationQuerySchema', 'Get-InvitationTag', 'Get-Job', 'Get-JobQuerySchema', 'Get-JobRandomJobName', 'Get-JobTag', 'Get-JobThread', 'Get-JobThreadAutoSpawnThread', 'Get-JobThreadLastLog', 'Get-JobThreadNodeName', 'Get-JobThreadQuerySchema', 'Get-JobThreadTag', 'Get-Repository', 'Get-RepositoryActionContentInfo', 'Get-RepositoryQuerySchema', 'Get-RepositoryTag', 'Get-Role', 'Get-RoleQuerySchema', 'Get-RoleTag', 'Get-Runner', 'Get-RunnerQuerySchema', 'Get-RunnerTag', 'Get-SetMemberCount', 'Get-Tag', 'Get-User', 'Get-UserQuerySchema', 'Get-UserTag', 'Import-AccountAsset', 'Import-Connection', 'Import-EndpointAsset', 'Import-Group', 'Import-GroupEx', 'Import-Invitation', 'Import-Job', 'Import-JobThread', 'Import-Repository', 'Import-Role', 'Import-Runner', 'Import-User', 'Initialize-Authentication', 'Invoke-AnswerInvitation', 'Invoke-BeginRunnerDissolveRunner', 'Invoke-CountAccountAsset', 'Invoke-CountAccountAssetQuery', 'Invoke-CountConnection', 'Invoke-CountConnectionQuery', 'Invoke-CountEndpointAsset', 'Invoke-CountEndpointAssetQuery', 'Invoke-CountGroup', 'Invoke-CountGroupQuery', 'Invoke-CountInvitation', 'Invoke-CountInvitationQuery', 'Invoke-CountJob', 'Invoke-CountJobQuery', 'Invoke-CountJobThread', 'Invoke-CountJobThreadQuery', 'Invoke-CountRepository', 'Invoke-CountRepositoryQuery', 'Invoke-CountRole', 'Invoke-CountRoleQuery', 'Invoke-CountRunner', 'Invoke-CountRunnerQuery', 'Invoke-CountUser', 'Invoke-CountUserQuery', 'Invoke-DissolveEndpointAssetEndpoint', 'Invoke-DownloadContent', 'Invoke-DownloadContentPublicFile', 'Invoke-DownloadRepositoryAction', 'Invoke-EnrollAuthentication', 'Invoke-HasInvitation', 'Invoke-InviteInvitationUser', 'Invoke-LiveAuthenticationSignup', 'Invoke-LoginAuthentication', 'Invoke-LogoutAuthentication', 'Invoke-MapAsset', 'Invoke-QueryAccountAsset', 'Invoke-QueryAssetMap', 'Invoke-QueryConnection', 'Invoke-QueryEndpointAsset', 'Invoke-QueryGroup', 'Invoke-QueryGroupEx', 'Invoke-QueryInvitation', 'Invoke-QueryJob', 'Invoke-QueryJobThread', 'Invoke-QueryRepository', 'Invoke-QueryRole', 'Invoke-QueryRunner', 'Invoke-QueryUser', 'Invoke-ShellRemoteShellCancel', 'Invoke-ShellRemoteShellPing', 'Invoke-ShellRemoteShellWrite', 'Invoke-SignupAuthentication', 'Invoke-SocketClient', 'Invoke-UploadContent', 'Invoke-VersionContent', 'New-AuthenticationUtilityNode', 'New-Connection', 'New-EnrollmentSession', 'New-Group', 'New-Job', 'New-RepositoryAction', 'New-Role', 'New-Set', 'New-User', 'Ping-Authentication', 'Remove-AccountAsset', 'Remove-Connection', 'Remove-EndpointAsset', 'Remove-Group', 'Remove-Invitation', 'Remove-Job', 'Remove-JobThread', 'Remove-Role', 'Remove-Runner', 'Remove-Set', 'Remove-SetFromSet', 'Remove-Tag', 'Remove-User', 'Request-Log', 'Request-ResultActionResult', 'Reset-AuthenticationPassword', 'Save-AccountAssetQueryToSet', 'Save-ConnectionQueryToSet', 'Save-EndpointAssetQueryToSet', 'Save-GroupQueryToSet', 'Save-InvitationQueryToSet', 'Save-JobQueryToSet', 'Save-JobThreadQueryToSet', 'Save-RepositoryQueryToSet', 'Save-RoleQueryToSet', 'Save-RunnerQueryToSet', 'Save-UserQueryToSet', 'Send-ResultActionResultReady', 'Send-ResultDownload', 'Send-ResultDownloadError', 'Set-Connection', 'Set-Group', 'Set-Job', 'Set-JobAction', 'Set-JobSchedule', 'Set-Role', 'Set-User', 'Step-JobThread', 'Test-AuthenticationEmailUnique', 'Test-ResultActionResult', '*'
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
