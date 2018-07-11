$ErrorActionPreference = 'Stop';

$packageName    = 'zorrovpn'
$installerType  = 'exe'
$url            = 'https://zorrovpn.com/static/download/ZorroVPNClient-Installer-0.2.0.exe'
$checksum       = 'BAEFADDD7186EA0AB78DF15D3A0ED7B6DABA5FF2B14A919539F286F939DEB4A3'
$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$silentArgs     = '/S'
$validExitCodes = @(0)

$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "zorrovpnInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName   = $packageName
  fileType      = $installerType
  url           = $url
  silentArgs    = $silentArgs
  validExitCodes= $validExitCodes
  softwareName  = 'zorrovpn*'
  checksum      = $checksum
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
