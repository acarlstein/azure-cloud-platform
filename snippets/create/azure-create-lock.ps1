[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)] [String] $resourceGroupName,
    [Parameter(Mandatory = $true)] [String] $lockName,
    [Parameter(Mandatory = $false)] [String] $lockType = "CanNotDelete",
    [Parameter(Mandatory = $false)] [String] $notes = "Resource Group Deletion Locked"
)
Write-Output $(az lock create --name $lockName --resource-group $resourceGroupName --lock-type $lockType --notes $notes)  