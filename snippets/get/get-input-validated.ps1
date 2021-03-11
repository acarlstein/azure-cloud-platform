[CmdletBinding()]
param (
    [Parameter(Mandatory = $false)] [String] $inputName = "Enter Input:",
    [Parameter(Mandatory = $true)] [String] $input,
    [Parameter(Mandatory = $true)] [String] $regex
)
do{
  try{
    [ValidatePattern({$regex})] $in = Read-Host $inputName
    Write-Out $in
  }catch{
    Write-Error "Incorrect Input Format"
  }
} until ($?)