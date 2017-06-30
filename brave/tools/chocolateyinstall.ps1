$ErrorActionPreference = 'Stop';

$packageName = 'brave'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/brave/browser-laptop/releases/download/v0.16.9dev/BraveSetup-ia32.exe'
$checksum = '2EA37CDC12B73542F5D1AD61817789CE04242191CD027A55ACC6EF81D5F95B63'
$checksumType = 'sha256'
$url64 = 'https://github.com/brave/browser-laptop/releases/download/v0.16.9dev/BraveSetup-x64.exe'
$checksum64 = 'DED7468548F6F85F98DAAA4AF0A840A30732418811F258CA28B4FD708B8E518C'
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
