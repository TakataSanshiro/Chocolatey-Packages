$ErrorActionPreference = 'Stop';

$toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe   = 'AutoHotKey'
$ahkFile  = Join-Path $toolsDir "chocolateyInstall.ahk"
Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'i2p'
  fileType       = 'exe'
  url            = 'https://files.i2p-projekt.de/1.8.0/i2pinstall%5F1.8.0%5Fwindows.exe'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'i2p*'
  checksum       = '738b7608d7f2c6433dcde8a1cbd7ea025d281e90b45c8695385004625a4c88d1'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
