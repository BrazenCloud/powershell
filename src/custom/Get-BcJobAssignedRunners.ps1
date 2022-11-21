Function Get-BcJobAssignedRunners {
    [OutputType([BrazenCloudSdk.PowerShell.Models.IEndpointAssetQueryView[]])]
    [CmdletBinding(
        DefaultParameterSetName = 'ByName'
    )]
    param (
        [Parameter(
            ParameterSetName = 'ByName',
            Position = 0
        )]
        [string]$JobName,
        [Parameter(
            ParameterSetName = 'ById'
        )]
        [string]$JobId
    )
    if ($PSCmdlet.ParameterSetName -eq 'ByName') {
        $JobId = (Get-BcJobByName -JobName $JobName).Id
    }
    $setId = (Get-BcJob -JobId $JobId).EndpointSetId
    Get-BcSetMember -SetId $setId
}