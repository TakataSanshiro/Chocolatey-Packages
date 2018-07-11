$ErrorActionPreference = 'Stop';

$packageName    = 'vyprvpn'
$installerType  = 'exe'
$url            = 'https://www.goldenfrog.com/downloads/vyprvpn/desktop/windows/production/2.13.1.8166/VyprVPN-2.13.1.8166-installer.exe'
$checksum       = 'BC865E29575F5E39F0802D1BB2AAEBED2E4D51B4285C0C927B68C660CBBB5E11'
$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$silentArgs     = '/S'
$validExitCodes = @(0)

$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "vyprvpnInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName   = $packageName
  fileType      = $installerType
  url           = $url
  silentArgs    = $silentArgs
  validExitCodes= $validExitCodes
  softwareName  = 'vyprvpn*'
  checksum      = $checksum
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
