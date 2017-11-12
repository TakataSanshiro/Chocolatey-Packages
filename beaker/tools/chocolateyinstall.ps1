$ErrorActionPreference = 'Stop';

$packageName = 'beaker'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/beakerbrowser/beaker/releases/download/0.7.7/beaker-browser-setup-0.7.7.exe' 
$checksum = 'CAF3D7C9155C5BA388942116B9544C7F45D88E12B24FF49F8444177F1A997385'
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
