[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)] [String] $path
)
[xml](Get-Content $path) | Write-Out
