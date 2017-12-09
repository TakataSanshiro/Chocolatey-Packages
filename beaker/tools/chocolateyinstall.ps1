$ErrorActionPreference = 'Stop';

$packageName = 'beaker'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/beakerbrowser/beaker/releases/download/0.7.10/beaker-browser-setup-0.7.10.exe' 
$checksum = '3EBE0040451198A3653161DF02C7C89E65D2610CBF0C66930F76FAB01EDFE811'
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
