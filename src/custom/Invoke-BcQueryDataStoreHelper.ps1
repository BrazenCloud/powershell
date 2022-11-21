Function Invoke-BcQueryDataStoreHelper {
    [cmdletbinding(
        DefaultParameterSetName = 'defaultQuery'
    )]
    param (
        [Parameter(Mandatory)]
        [string]$IndexName,
        [Parameter(
            ParameterSetName = 'usingQueryHashtable'
        )]
        #example: @{query_string=@{query='agentInstall';default_field='type'}}
        [hashtable]$QueryHashtable,
        [Parameter(
            ParameterSetName = 'usingQueryString'
        )]
        [string]$QueryString,
        [string]$GroupId = (Get-BcAuthenticationCurrentUser).HomeContainerId,
        [int]$From = 0,
        [int]$Take = 500
    )
    switch ($PSCmdlet.ParameterSetName) {
        'defaultQuery' {
            $query = '{"match_all": {} }'
        }
        'usingQueryHashtable' {
            $query = $QueryHashtable | ConvertTo-Json -Compress
        }
        'usingQueryString' {
            $query = $QueryString
        }
    }
    $querySplat = @{
        GroupId     = $GroupId
        IndexName   = $IndexName
        SearchQuery = $query
        From        = $From
        Take        = $Take
    }
    $results = Invoke-BcQueryDataStore @querySplat
    $results.Result.AdditionalProperties | ForEach-Object {
        New-Object PSObject -Property $_
    }
}