$ErrorActionPreference = 'Stop';

$toolsDir        = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe          = 'AutoHotKey'
$ahkFile         = Join-Path $toolsDir "vyprvpnInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'vyprvpn'
  fileType       = 'exe'
  url            = 'https://downloads-goldenfrog.netdna-ssl.com/downloads/vyprvpn/desktop/windows/production/3.0.0.9646/VyprVPN-3.0.0.9646-installer.exe'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'vyprvpn*'
  checksum       = 'D04198AF73EAB7CEE3D122ED38C5F2C9E72A7823A6891A0E25E6BB137A71A9FA'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
