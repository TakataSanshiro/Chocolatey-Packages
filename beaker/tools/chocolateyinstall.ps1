$ErrorActionPreference = 'Stop';

$packageName = 'beaker'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/beakerbrowser/beaker/releases/download/0.8.2/beaker-browser-setup-0.8.2.exe' 
$checksum = '9ECD96E90DEF2FA42B060D64290129903115D7410B2C2008E8D4B928C4B5846A'
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
