$ErrorActionPreference = 'Stop';

$packageName = 'beaker'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github.com/beakerbrowser/beaker/releases/download/0.8.8/beaker-browser-setup-0.8.8.exe' 
$checksum = '6662842F36E3D4E5E52AA8CA209D6727850A97831980214ED749829409A2D886'
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
