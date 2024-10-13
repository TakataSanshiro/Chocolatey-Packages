$ErrorActionPreference = 'Stop';

$toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe   = 'AutoHotKey'
$ahkFile  = Join-Path $toolsDir "chocolateyInstall.ahk"
Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'i2p'
  fileType       = 'exe'
  url            = 'https://files.i2p-projekt.de/2.7.0/i2pinstall%5F2.7.0%5Fwindows.exe'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'i2p*'
  checksum       = 'ea3872af06f7a147c1ca84f8e8218541963da6ad97e30e1d8f7a71504e4b0cee'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
