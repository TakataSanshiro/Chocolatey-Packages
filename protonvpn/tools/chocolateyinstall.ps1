$ErrorActionPreference = 'Stop';

$packageName    = 'protonvpn'
$installerType  = 'exe'
$url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.6.3.exe'
$checksum       = 'FC1B8FD56DB63D37245B41E71928819AF7B572F1F8E7310D06577FA7D0CC8400'
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