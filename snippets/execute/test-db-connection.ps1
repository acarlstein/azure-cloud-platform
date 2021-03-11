[CmdletBinding()]
param (
  [Parameter(Mandatory = $true)] [String] $serverUrl,
  [Parameter(Mandatory = $false)] [String] $port = "1433",
  [Parameter(Mandatory = $true)] [String] $login,
  [Parameter(Mandatory = $true)] [SecureString] $password,
  [Parameter(Mandatory = $true)] [String] $databaseName
)
$hostServer = $serverUrl + "," + $port
try {
  $connectionString = 'Data Source={0};database={1};User ID={2};Password={3}' -f $hostServer,$databaseName,$login,$(ConvertTo-SecureString $password -AsPlainText -Force)
  $sqlConnection = New-Object System.Data.SqlClient.SqlConnection $connectionString
  $sqlConnection.Open()
  $sqlConnection.Close()
  Write-Output $true
} catch {
  Write-Output $false
}