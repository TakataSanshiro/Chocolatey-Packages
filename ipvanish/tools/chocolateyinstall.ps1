$ErrorActionPreference = 'Stop';

$packageName    = 'ipvanish'
$installerType  = 'exe'
$url            = 'https://www.ipvanish.com/software/setup-prod-v2/ipvanish-setup.exe'
$checksum       = 'B98D964D098396B1697131009A760A49DB58DC58776EF920B3B61B957A764EFC'
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