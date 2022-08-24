$ErrorActionPreference = 'Stop';

$toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe   = 'AutoHotKey'
$ahkFile  = Join-Path $toolsDir "chocolateyInstall.ahk"
Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'i2p'
  fileType       = 'exe'
  url            = 'https://files.i2p-projekt.de/1.9.0/i2pinstall%5F1.9.0%5Fwindows.exe'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'i2p*'
  checksum       = 'fdb2e471fadfda33589697536180df966ec165ab59a0d9c8a623491cc2c8eae3'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
