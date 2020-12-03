$ErrorActionPreference = 'Stop';

$toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe   = 'AutoHotKey'
$ahkFile  = Join-Path $toolsDir "chocolateyInstall.ahk"
Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'i2p'
  fileType       = 'exe'
  url            = 'https://download.i2p2.de/releases/0.9.48/i2pinstall%5F0.9.48%5Fwindows.exe'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'i2p*'
  checksum       = '817d52ea7662ef22a6158d62431aee44b8effe26d3883d979bbc72dac02a80d6'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
