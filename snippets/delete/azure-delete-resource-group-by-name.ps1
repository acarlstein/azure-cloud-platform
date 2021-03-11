[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)] [String] $resourceGroupName
)
Write-Out $(az group delete --name $resourceGroupName --yes)
