[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)] [String] $appServimetricAlertRuleNameceName,
    [Parameter(Mandatory = $true)] [String] $resourceGroupName,
    [Parameter(Mandatory = $true)] [String] $subscriptionName
)
Write-Out $(az monitor metrics alert delete --name $metricAlertRuleName --resource-group $resourceGroupName --subscriptionName $subscriptionName)
