$ErrorActionPreference = 'Stop';

$packageName    = 'insomnia-rest-api-client'
$installerType  = 'exe'
$url            = 'https://github.com/getinsomnia/insomnia/releases/download/v6.3.2/Insomnia.Setup.6.3.2.exe'
$checksum       = '4C566F5F9453AE3898A7992B2C1C2D853E163673E3221AE0155B6CDA97E3D558'
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
