$ErrorActionPreference = 'Stop';

$toolsDir        = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe          = 'AutoHotKey'
$ahkFile         = Join-Path $toolsDir "vyprvpnInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'vyprvpn'
  fileType       = 'exe'
  url            = 'https://downloads-goldenfrog.netdna-ssl.com/downloads/vyprvpn/desktop/windows/production/4.2.3.10724/VyprVPN-4.2.3.10724-installer.exe'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'vyprvpn*'
  checksum       = 'a7aca1a37d5a7b285a0db5452159ceeb5a6ffc85dba1a445fd8fd150ef446b42'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
