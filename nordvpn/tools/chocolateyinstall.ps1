$ErrorActionPreference = 'Stop';

$packageName    = 'nordvpn'
$installerType  = 'exe'
$url            = 'https://downloads.nordcdn.com/apps/windows/10/NordVPN/latest/NordVPNSetup.exe'
$checksum       = '2C0CAFF0BC1B77C03B1530A6563F3BA3C80A5A8EE6B4D3C7E4A66F0D435D53CA'
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