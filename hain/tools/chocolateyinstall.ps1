$ErrorActionPreference = 'Stop';

$packageName = 'hain'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/hainproject/hain/releases/download/v0.6.6/HainSetup-ia32-v0.6.6.exe'
$checksum = 'A7DA87019AC4D0D9F62BF9AA82E0A37DF0EA3E56C9C578605D7CF328D4D39E88'
$checksumType = 'sha256'
$url64 = 'https://github.com/hainproject/hain/releases/download/v0.6.6/HainSetup-x64-v0.6.6.exe'
$checksum64 = '59B048C9FB4E635DBE7FBEB1576C62D25FA7A58E84CFF709F228D97961F6378D'
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