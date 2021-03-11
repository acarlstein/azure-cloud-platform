[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)] [String] $relativePath
)
Write-Output (Split-Path $script:MyInvocation.MyCommand.Path) + $relativePath