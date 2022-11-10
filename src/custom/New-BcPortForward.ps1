Function New-BcPortForward {
    [cmdletbinding(
        DefaultParameterSetName = 'byAssetId'
    )]
    param (
        [Parameter(
            ParameterSetName = 'byName',
            Mandatory
        )]
        [string]$Name,
        [Parameter(
            ParameterSetName = 'byAssetId',
            Mandatory
        )]
        [string]$AssetId,
        [Parameter(
            ParameterSetName = 'byRunnerId',
            Mandatory
        )]
        [string]$RunnerId,
        [string]$RemoteDestination = 'localhost:22',
        [string]$Source = 'localhost:2222',
        [switch]$PassThru
    )
    # get the endpoint object
    if ($PSCmdlet.ParameterSetName -eq 'byName') {
        $endpoint = Get-BcEndpointAsset -EndpointId (Get-BcRunnerByName -AssetName $Name).AssetId
    } elseIf ($PSCmdlet.ParameterSetName -eq 'byAssetId') {
        $endpoint = Get-BcEndpointAsset -EndpointId $AssetId
    } elseIf ($PSCmdlet.ParameterSetName -eq 'byRunnerId') {
        $endpoint = Get-BcEndpointAsset -EndpointId (Get-BcRunner -RunnerId $RunnerId).AssetId
    }

    # get the action
    $slAction = Get-BcRepository -Name 'runway:stream:connect'

    # build the set
    $set = New-BcSet
    Add-BcSetToSet -TargetSetId $set -ObjectIds $endpoint.Id | Out-Null

    # generate a guid
    $guid = (New-Guid).Guid
    
    # create the job
    $jobSplat = @{
        Name          = "portForward:$guid"
        IsEnabled     = $true
        IsHidden      = $false
        EndpointSetId = $set
        GroupId       = $endpoint.Groups[0]
        Actions       = @(
            @{
                RepositoryActionId  = $slAction.Id
                specificPlacementId = $endpoint.Id
                Settings            = @{
                    'Stream Name' = $guid
                    'Output Type' = 'tcp'
                    Address       = $RemoteDestination
                    Timeout       = '15m'
                }
            }
        )
        Schedule      = New-BcJobScheduleObject -ScheduleType 'RunNow' -RepeatMinutes 0
    }
    Write-Host 'Creating remote stream job...'
    $job = New-BcJob @jobSplat
    <#[pscustomobject]@{
        Job    = $job
        Stream = $guid
    }#>
    if ($null -ne $job.JobId) {
        Write-Host 'Job created. Attempting to connect...'

        if ((Get-ChildItem env:).Name -contains 'BrazenCloudUtilityPath') {
            $procSplat = @{
                FilePath     = $env:BrazenCloudUtilityPath
                ArgumentList = @('-N', '-S', $env:BrazenCloudDomain, 'stream', '--listen', $guid, '--input', "tcp://$source", '--persistent')
                PassThru     = $PassThru.IsPresent
            }
            Start-Process @procSplat -LoadUserProfile

            Write-Host "$source is now being forwarded to $RemoteDestination on $($endpoint.Name)."
            Write-Host "Connection '$guid' initiated. Close the new window when you are finished."
        } else {
            Write-Warning "Unable to automatically connect to the stream. The BrazenCloud utility is not downloaded. You can reconnect using 'Connect-BrazenCloud' and omit the -SkipExecutableDownload. Or you can manually connect with 'runway -S $($env:BrazenCloudDomain) stream --listen $guid --persistent'"
        }
    }
}