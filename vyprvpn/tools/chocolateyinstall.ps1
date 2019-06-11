$ErrorActionPreference = 'Stop';

$packageName    = 'vyprvpn'
$installerType  = 'exe'
$url            = 'https://downloads-goldenfrog.netdna-ssl.com/downloads/vyprvpn/desktop/windows/production/2.16.4.9212/VyprVPN-2.16.4.9212-installer.exe'
$checksum       = 'DB025A52BDF7153F42EEBF63659D616AD7D3BCECCA6AAA6E04CFE6E412C9C555'
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
