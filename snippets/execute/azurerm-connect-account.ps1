[String] $isConnected = Connect-AzureRmAccount
if (([string]::IsNullOrEmpty($isConnected))){ exit }