$ErrorActionPreference = 'Stop';

$toolsDir        = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe          = 'AutoHotKey'
$ahkFile         = Join-Path $toolsDir "vyprvpnInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'vyprvpn'
  fileType       = 'exe'
  url            = 'https://downloads-goldenfrog.netdna-ssl.com/downloads/vyprvpn/desktop/windows/production/4.3.1.10763/VyprVPN-4.3.1.10763-installer.exe'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'vyprvpn*'
  checksum       = '6e9c8eb31b66541ce3f9bc1a4576d95c6f85d3ceca4d75e6c3372b93e9d05050'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
