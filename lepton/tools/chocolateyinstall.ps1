$ErrorActionPreference = 'Stop';

$packageName = 'lepton'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/hackjutsu/Lepton/releases/download/v1.6.1/Lepton-Setup-1.6.1.exe'
$checksum = '13EF3CC5F94CC8924E8FFD3AD998F095D81A6DC866059F7E7B706F5343A2D53F'
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
