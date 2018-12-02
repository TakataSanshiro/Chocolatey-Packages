$ErrorActionPreference = 'Stop';

$packageName    = 'protonvpn'
$installerType  = 'exe'
$url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.6.4.exe'
$checksum       = 'F7DACEF0DD6313EC4B0698E28CE64CC6E96A8CCA7E1D311966EB7507B9E2F9FE'
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