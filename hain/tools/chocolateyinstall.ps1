$ErrorActionPreference = 'Stop';

$packageName = 'hain'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/hainproject/hain/releases/download/v0.7.0-beta.1/HainSetup-ia32-v0.7.0-beta.1.exe'
$checksum = '6072E0EF4F00A3F671287451DE25665CC12749FD8DFFC5C51B9A4504570B817A'
$checksumType = 'sha256'
$url64 = 'https://github.com/hainproject/hain/releases/download/v0.7.0-beta.1/HainSetup-x64-v0.7.0-beta.1.exe'
$checksum64 = 'E49E938EC09066DE1BF9972B3AFEE98FA08872A4FB2FD274588B40E898AA1A69'
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