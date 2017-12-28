$ErrorActionPreference = 'Stop';

$packageName = 'signal'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://updates.signal.org/desktop/signal-desktop-win-1.1.0.exe'
$checksum = '685D37A74902D8359D53BD2078078AD95D0CB5076B5873D36F1436AD5567E89B'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0) 

Install-ChocolateyPackage `
  -PackageName "$packageName" `
  -FileType "$installerType" `
  -SilentArgs "$silentArgs" `
  -Url "$url" `
  -Checksum "$checksum" `
  -ChecksumType "$checksumType" `
  -ValidExitCodes "$validExitCodes"
