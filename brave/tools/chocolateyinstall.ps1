$ErrorActionPreference = 'Stop';

$packageName = 'brave'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/brave/browser-laptop/releases/download/v0.18.29dev/BraveSetup-ia32.exe'
$checksum = 'CBB5765262684F0340B6602DCCA7F86CDBA5C506B0602B7A71ED1FD1977FBA26'
$checksumType = 'sha256'
$url64 = 'https://github.com/brave/browser-laptop/releases/download/v0.18.29dev/BraveSetup-x64.exe'
$checksum64 = '3DBCBBB5E9BAE662627B51DBA590C845426055A5696343D03EC2C3F393D055A6'
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
