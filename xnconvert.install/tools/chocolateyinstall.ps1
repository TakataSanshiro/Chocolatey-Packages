$ErrorActionPreference = 'Stop';

$packageName = 'xnconvert.install'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'http://download.xnview.com/XnConvert-win.exe'
$checksum = '8F26E859D63EC4B2FB48D2D9F00F74FDAC1E11DB4B4C44EF45E610B1A4EDADC3'
$checksumType = 'sha256'
$url64 = 'http://download.xnview.com/XnConvert-win-x64.exe'
$checksum64 = 'B7971D921FF63ECC459A6C2F63C3E48C28D773BCF58DE50ACBD61DDED4003E08'
$checksumType64 = 'sha256'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
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
