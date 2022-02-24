$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-3.3-06906.exe'
  checksum       = '774049b786ae4cab7a56d304e65f2e6e17e4aad12200f1a631a11c3f3b65637b'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-3.3-06906.exe'
  checksum64     = '1fdc61f2283d117bc707b55ce3cca172826e7e924020f85b6ffc512d3d525872'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
