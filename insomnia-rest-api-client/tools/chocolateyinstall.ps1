$ErrorActionPreference = 'Stop';

$packageName    = 'insomnia-rest-api-client'
$installerType  = 'exe'
$url            = 'https://github.com/getinsomnia/insomnia/releases/download/v5.16.6/Insomnia.Setup.5.16.6.exe'
$checksum       = '654756F1AC02E961E30BC2ED54EB6D4E5466BD2643633DB1DC6103872452033C'
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
