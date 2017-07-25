$ErrorActionPreference = 'Stop';

$packageName = 'brave'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/brave/browser-laptop/releases/download/v0.17.19dev/BraveSetup-ia32.exe'
$checksum = '9F9B5BE348D78880575B03B5300DDF91D561DD67523C5FE1A556A9DCA80541AD'
$checksumType = 'sha256'
$url64 = 'https://github.com/brave/browser-laptop/releases/download/v0.17.19dev/BraveSetup-x64.exe'
$checksum64 = 'ED5CB2B58B1C4C9960B6ED8B0DEF102D95AA0BFF18021EFF5363D09046DD432A'
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
