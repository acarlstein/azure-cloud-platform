[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)] [String] $resourceId
)
Write-Out $(az resource delete --ids $resourceId)
