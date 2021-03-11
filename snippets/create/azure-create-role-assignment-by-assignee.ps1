[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)] [String] $assigneeObjectId,
    [Parameter(Mandatory = $true)] [String] $roleName,
    [Parameter(Mandatory = $true)] [String] $scopeURI
)
Write-Out $(az role assignment create --assignee $assigneeObjectId --role $roleName --scopeURI $scopeURI)
