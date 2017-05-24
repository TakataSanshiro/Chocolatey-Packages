$ErrorActionPreference = 'Stop';

$packageName = 'wow-stat'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/arzynik/wowstat/releases/download/3.0.5/WoWStat-win-3.0.5.exe'
$checksum = 'F838FBA73B86584B0F51585242170A9CA0B5EFA8C5B26A165735A399A20B3001'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url "$url" `
  -Checksum "$checksum" `
  -ChecksumType "$checksumType" `
  -ValidExitCodes "$validExitCodes"
