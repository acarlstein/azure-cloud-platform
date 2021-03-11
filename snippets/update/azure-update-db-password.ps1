[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)] [String] $databaseServerName,
    [Parameter(Mandatory = $true)] [String] $resourceGroupName,
    [Parameter(Mandatory = $true)] [SecureString] $newPassword
)
Write-Output $(az sql server update --name $databaseServerName --resource-group $resourceGroupName --admin-password (ConvertTo-SecureString $newPassword -AsPlainText -Force))

