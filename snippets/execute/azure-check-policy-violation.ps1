[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)] [String] $subscriptionId,
    [Parameter(Mandatory = $false)] [String] $resourceGroup
)

if ([string]::IsNullOrEmpty($resourceGroup)){
  az rest --verbose --method post --uri "https://management.azure.com/subscriptions/$($subscriptionId)/providers/Microsoft.PolicyInsights/policyStates/latest/triggerEvaluation?api-version=2018-07-01-preview"  
} else {
  az rest --verbose --method post --uri "https://management.azure.com/subscriptions/$($subscriptionId)/resourceGroups/$($resourceGroup)/providers/Microsoft.PolicyInsights/policyStates/latest/triggerEvaluation?api-version=2019-10-01"
}


