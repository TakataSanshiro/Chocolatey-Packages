$ErrorActionPreference = 'Stop';

$packageName    = 'protonvpn'
$installerType  = 'exe'
$url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.3.6.exe'
$checksum       = '4CCB74CDAC28EFAA3C5551D11E2BB54294543824E513AC1257A5533F79898339'
$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$silentArgs     = '/quiet'
$validExitCodes = @(0)

$packageArgs = @{
  packageName   = $packageName
  fileType      = $installerType
  url           = $url
  silentArgs    = $silentArgs
  validExitCodes= $validExitCodes
  softwareName  = 'ProtonVPN*'
  checksum      = $checksum
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs