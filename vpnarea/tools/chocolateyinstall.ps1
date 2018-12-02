$ErrorActionPreference = 'Stop';

$packageName    = 'vpnarea'
$installerType  = 'exe'
$url            = 'https://vpnarea.com/VPNArea.exe'
$checksum       = '63EBD171AF7DB5D70F8062861DF13C38D2FE95FF3AB8BF180E4704ED3532F001'
$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$silentArgs     = '/S'
$validExitCodes = @(0)

$packageArgs = @{
  packageName   = $packageName
  fileType      = $installerType
  url           = $url
  silentArgs    = $silentArgs
  validExitCodes= $validExitCodes
  softwareName  = 'vpnarea*'
  checksum      = $checksum
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
