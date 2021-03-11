[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)] [String] $appServiceName,
    [Parameter(Mandatory = $true)] [String] $resourceGroupName
)
Write-Out $(az appservice plan delete --name $appServiceName --resource-group $resourceGroupName --yes)
