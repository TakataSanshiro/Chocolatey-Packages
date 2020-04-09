$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-2.0.1-04518.exe'
  checksum       = '0ad811ba98137409e60a94fb8ddda6322bf869b9c9d57920659e81a10f8963c1'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-2.0.1-04518.exe'
  checksum64     = 'c7f1f362ed5500043007d40619f4de17b92e77e3f318a2721ddfe16ea79c584b'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
