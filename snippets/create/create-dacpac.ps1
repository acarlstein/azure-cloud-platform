[CmdletBinding()]
param (
    [Parameter(Mandatory = $false)] [String] $sqlPackagePath = "C:\Program Files\Microsoft SQL Server\150\DAC\bin\SqlPackage.exe",
    [Parameter(Mandatory = $true)] [String] $serverUrl,
    [Parameter(Mandatory = $false)] [String] $port = "1433",
    [Parameter(Mandatory = $true)] [String] $login,
    [Parameter(Mandatory = $true)] [SecureString] $password,
    [Parameter(Mandatory = $true)] [String] $databaseName,
    [Parameter(Mandatory = $true)] [String] $saveToPath,
    [Parameter(Mandatory = $false)] [String] $description = "DACPAC Extraction",
    [Parameter(Mandatory = $false)] [String] $majorVersion = "1",
    [Parameter(Mandatory = $false)] [String] $minorVersion = "0",
    [Parameter(Mandatory = $false)] [ValidateSet('trie', 'false')][String] $doExtractData = "false"
)

$hostServer = $serverUrl + "," + $port

try {
  &  $sqlPackagePath @( 
  "/Action:Extract", 
  "/SourceServerName:$hostServer",  
  "/SourceUser:$Login", 
  "/SourcePassword:$(ConvertTo-SecureString $password -AsPlainText -Force)", 
  "/SourceDatabaseName:$databaseName", 
  "/TargetFile:$saveToPath",
  "/OverwriteFiles:True", 
  "/p:DacApplicationDescription=$description", 
  "/p:DacMajorVersion=$majorVersion", 
  "/p:DacMinorVersion=$ninorVersion", 
  '/p:ExtractAllTableData=$doExtractData') # Indicates whether data from all user tables is extracted 
} catch {
  Write-Error "DacPac Extraction Failed"
  exit
} 