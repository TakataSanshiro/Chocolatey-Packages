$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-2.0-04513.exe'
  checksum       = '1bd8bad451b5be55cdc310da4f86e3bb2d57ba75ea8aa58d6c500907c8933a4b'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-2.0-04513.exe'
  checksum64     = '7bb26755c18368035531115b329a292ca32fb86061bc8fefe913f96aef628424'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
