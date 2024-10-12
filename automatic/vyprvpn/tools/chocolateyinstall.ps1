$ErrorActionPreference = 'Stop';

$toolsDir        = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe          = 'AutoHotKey'
$ahkFile         = Join-Path $toolsDir "vyprvpnInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'vyprvpn'
  fileType       = 'exe'
  url            = 'https://www.vyprvpn.com/downloads/vyprvpn/desktop/windows/production/5.2.0.0/VyprVPN-5.2.0.0-installer.exe'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'vyprvpn*'
  checksum       = '73d33fd7cb6418faae5316cf73465bb74f3b2a8fbae4ce491caff478888220d4'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
