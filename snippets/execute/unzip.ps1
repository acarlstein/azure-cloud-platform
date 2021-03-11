[CmdletBinding()]
param (
  [Parameter(Mandatory = $true)] [String] $sourcePath,
  [Parameter(Mandatory = $true)] [String] $destinationPath
)
Expand-Archive -LiteralPath $sourcePath -DestinationPath $destinationPath -Force

