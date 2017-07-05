$ErrorActionPreference = 'Stop';

$packageName = 'hain'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/hainproject/hain/releases/download/v0.6.4/HainSetup-ia32-v0.6.4.exe'
$checksum = 'DBC061F65CDC4593DCBC7C6B8CD7D543CFE0A3D3A4F14D1DB0AE829DE95F7B1A'
$checksumType = 'sha256'
$url64 = 'https://github.com/hainproject/hain/releases/download/v0.6.4/HainSetup-x64-v0.6.4.exe'
$checksum64 = 'BAE46BD5781C90A63FAA849B349809AD8FBB77BC9117A35E5F158E2DD5F48F85'
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
