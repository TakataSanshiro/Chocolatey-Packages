$ErrorActionPreference = 'Stop';

$packageName = 'brave'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/brave/browser-laptop/releases/download/v0.19.122dev/BraveSetup-ia32.exe'
$checksum = 'CC7C1AC7961B286B411C49E317A3337D37FA3E7B0D906E2FD5A5B17A8B832D42'
$checksumType = 'sha256'
$url64 = 'https://github.com/brave/browser-laptop/releases/download/v0.19.122dev/BraveSetup-x64.exe'
$checksum64 = '8195393A20326A8DFFCDEA8E3CA0FCA00CB9727929B14D6A74F5D2FE0F45B6F8'
$checksumType64 = 'sha256'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0) 

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url "$url" `
  -Checksum "$checksum" `
  -ChecksumType "$checksumType" `
  -Url64bit "$url64" `
  -Checksum64 "$checksum64" `
  -ChecksumType64 "$checksumType64" `
  -ValidExitCodes "$validExitCodes"
