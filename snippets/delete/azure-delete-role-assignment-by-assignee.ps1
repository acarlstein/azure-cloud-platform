[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)] [String] $assigneeObjectId,
    [Parameter(Mandatory = $true)] [String] $roleName,
    [Parameter(Mandatory = $true)] [String] $scopeURI
)
Write-Out $(az role assignment delete --assignee $assigneeObjectId --role $roleName --scope $scopeURI)
