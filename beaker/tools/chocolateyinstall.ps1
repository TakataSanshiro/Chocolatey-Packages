$ErrorActionPreference = 'Stop';

$packageName = 'beaker'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/beakerbrowser/beaker/releases/download/0.7.11/beaker-browser-setup-0.7.11.exe' 
$checksum = '256700612164fbd29b79823ef94e211e41645ec708e65be2b5b04fd3e1c74401'
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
