$ErrorActionPreference = 'Stop';

$packageName = 'brave'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/brave/browser-laptop/releases/download/v0.19.95dev/BraveSetup-ia32.exe'
$checksum = '3F12A76A8BAA3ED2D3969278EC170FC2EE22F3C56BEA7DCD29F9713C3CDD9788'
$checksumType = 'sha256'
$url64 = 'https://github.com/brave/browser-laptop/releases/download/v0.19.95dev/BraveSetup-x64.exe'
$checksum64 = 'B6BDF88D2F56E5B9E5E1C0C9D0F30D5DB48ACFA5E98CECCFD814F9470B08F4F5'
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
