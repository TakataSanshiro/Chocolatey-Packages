$ErrorActionPreference = 'Stop';

$packageName    = 'ipvanish'
$installerType  = 'exe'
$url            = 'https://www.ipvanish.com/software/setup-prod-v2/ipvanish-setup.exe'
$checksum       = 'B1CCA8E7B43849B1CEC6B088584DD6E6693A91FD159D33DF01C1D528B2FAF8CF'
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