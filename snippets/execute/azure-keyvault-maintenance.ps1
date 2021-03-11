[CmdletBinding()]
param (
  [Parameter(Mandatory = $true)] [String] $keyVaultName,    
  [Parameter(Mandatory = $true)] [ValidateNotNullOrEmpty] 
  [ValidateSet('set', 'delete', 'show')] [String] $action,
  [Parameter(Mandatory = $true)] [String] $secretName,
  [Parameter(Mandatory = $false)] [String] $secretValue = "" 
)

If([string]::IsNullOrEmpty($secretValue)){
  $secretValue = "--value $($secretValue) --output none"
}

Write-Output $(az keyvault secret $action --vault-name $keyVaultName --name $secretName $secretValue)