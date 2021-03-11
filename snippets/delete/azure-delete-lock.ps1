[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)] [String] $resourceGroupName,
    [Parameter(Mandatory = $true)] [String] $lockName
)
Write-Output $(az lock delete --name $lockName --resource-group $resourceGroupName)