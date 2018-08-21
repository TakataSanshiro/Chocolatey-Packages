$ErrorActionPreference = 'Stop';

$packageName    = 'insomnia-rest-api-client'
$installerType  = 'exe'
$url            = 'https://github.com/getinsomnia/insomnia/releases/download/v6.0.2/Insomnia.Setup.6.0.2.exe'
$checksum       = '7944E3E75EDF3A2F1CDFEF07924495075B3E7FAA899804CEBAB5DE9A0AF291FD'
$toolsDir       = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
$silentArgs     = '/VERYSILENT'
$validExitCodes = @(0)

$packageArgs = @{
  packageName   = $packageName
  fileType      = $installerType
  url           = $url
  silentArgs    = $silentArgs
  validExitCodes= $validExitCodes
  checksum      = $checksum
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
