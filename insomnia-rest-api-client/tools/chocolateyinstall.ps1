$ErrorActionPreference = 'Stop';

$packageName    = 'insomnia-rest-api-client'
$installerType  = 'exe'
$url            = 'https://github.com/getinsomnia/insomnia/releases/download/v6.5.1/Insomnia.Setup.6.5.1.exe'
$checksum       = '63D7E11ACEA6AD0774AA9AE7EF3CDF86287C4C93DEB4600E2A8C814F4F5CCF4D'
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
