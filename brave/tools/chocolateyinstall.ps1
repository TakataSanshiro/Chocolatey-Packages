$ErrorActionPreference = 'Stop';

$packageName = 'brave'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/brave/brave-browser/releases/download/v0.58.21/BraveBrowserSetup32.exe'
$checksum = '1EAB064F9D598EF1D77A15B9C581E1E5B0EE37114CDD4A4AAA990254917860B8'
$checksumType = 'sha256'
$url64 = 'https://github.com/brave/brave-browser/releases/download/v0.58.21/BraveBrowserSetup.exe'
$checksum64 = '244EEBC168E87DC352C86346091CB392145F57BF9795FAEFA7CEAD20EB1A744A'
$checksumType64 = 'sha256'
$silentArgs = ''
$validExitCodes = @(0) 

$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "braveInstall.ahk"
Start-Process $ahkExe $ahkFile

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
