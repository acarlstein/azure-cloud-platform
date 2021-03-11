[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)] [String] $roleAssignmentId
)
$subscriptionId = ConvertFrom-json (az account list --query "[?isDefault].id | [0]")
Write-Out $(az role assignment delete --ids roleAssignmentId --yes --subscription $subscriptionId)
