$ErrorActionPreference = 'Stop';

$toolsDir        = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe          = 'AutoHotKey'
$ahkFile         = Join-Path $toolsDir "vyprvpnInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'vyprvpn'
  fileType       = 'exe'
  url            = 'https://downloads-goldenfrog.netdna-ssl.com/downloads/vyprvpn/desktop/windows/production/4.3.0.10746/VyprVPN-4.3.0.10746-installer.exe'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'vyprvpn*'
  checksum       = '1234a946357925403221fb5a3ff82ddb40227313834e95105908ee37f7fd05b5'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
