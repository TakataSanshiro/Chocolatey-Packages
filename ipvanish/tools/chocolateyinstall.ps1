$ErrorActionPreference = 'Stop';

$packageName    = 'ipvanish'
$installerType  = 'exe'
$url            = 'https://www.ipvanish.com/software/setup-prod-v2/ipvanish-setup.exe'
$checksum       = '01F11375163817FC708B4FBA6469ADFE0104881764AA5617C3A60D31961559E4'
$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$silentArgs     = '/quiet'
$validExitCodes = @(0)

$packageArgs = @{
  packageName   = $packageName
  fileType      = $installerType
  url           = $url
  silentArgs    = $silentArgs
  validExitCodes= $validExitCodes
  softwareName  = 'ipvanish*'
  checksum      = $checksum
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs