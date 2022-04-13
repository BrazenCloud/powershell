Function Get-RwJobAssignedRunners {
    [CmdletBinding(
        DefaultParameterSetName = 'ByName'
    )]
    param (
        [Parameter(
            ParameterSetName = 'ByName'
        )]
        [string]$JobName,
        [Parameter(
            ParameterSetName = 'ById'
        )]
        [string]$JobId
    )
    if ($PSCmdlet.ParameterSetName -eq 'ByName') {
        $JobId = (Get-RwJobByName -JobName $JobName).Id
    }
    $setId = (Get-RwJob -JobId $JobId).EndpointSetId
    Get-RwSetMember -SetId $setId
}