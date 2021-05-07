$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-2.9-06393.exe'
  checksum       = '598ce14c424bd7903678e2ffc5fd4586bd12cbe0b92868c0312ab1a11ca3d115'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-2.9-06393.exe'
  checksum64     = '307f2bae66ddbe66b321f5e2c9beaa60ef82e83862db481963311f83c0e18e8a'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
