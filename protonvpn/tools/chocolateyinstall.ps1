$ErrorActionPreference = 'Stop';

$packageName    = 'protonvpn'
$installerType  = 'exe'
$url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.2.6.exe'
$checksum       = 'B4F3653948200BD58C7938373B4F912AE4229C0E30A20BC7890EB130B259F903'
$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$silentArgs     = '/quiet'
$validExitCodes = @(0)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "protonvpnInstall.ahk"

Start-Process $ahkExe $ahkFile

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
Start-Sleep -s 30