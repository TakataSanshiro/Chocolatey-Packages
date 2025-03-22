$ErrorActionPreference = 'Stop';

$toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe   = 'AutoHotKey'
$ahkFile  = Join-Path $toolsDir "chocolateyInstall.ahk"
Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'i2p'
  fileType       = 'exe'
  url            = 'https://files.i2p-projekt.de/2.8.1/i2pinstall%5F2.8.1%5Fwindows.exe'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'i2p*'
  checksum       = '013f30db4116711fdb5f78f21f55da9a883a7de110f9c5b6d4f1390d60cc3441'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
