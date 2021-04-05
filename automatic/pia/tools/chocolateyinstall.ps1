$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-2.8.1-06335.exe'
  checksum       = '98a5c8e829bb13ea8d78491d50c0ac7755b8008f26dd8740a34dab594a36e6fc'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-2.8.1-06335.exe'
  checksum64     = '4e84b07c6346db1a7e9310290e949559691a066959c18497c61df740dc3b23bd'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
