[CmdletBinding()]
param (
    [Parameter(Mandatory = $false)] [String] $subscriptionId = $(ConvertFrom-Json (az account list --query "[?isDefault].id | [0]"))
)

$accessToken = (az account get-access-token --query "accessToken" | % { $_.Trim('"') })
$authHeader = @{
  'Content-Type'='application/json'
  'Authorization'="Bearer $($accessToken)"  
}
$restUri = "https://management.azure.com/subscriptions/$($subscriptionId)/providers/Microsoft.PolicyInsights/policyStates/latest/triggerEvaluation?api-version=2018-07-01-preview"
Invoke-webrequest -Uri $restUri -Method POST -Headers $authHeader
