$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-1.8-04193.exe'
  checksum       = 'f1ecd28293618aee8e39728882090d9400218bd1078f8867a149af114dbdc10b'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-1.8-04193.exe'
  checksum64     = 'd27a66e9585ee78e2f60d1c0b380643757f7ec7e8044cf23ebc522230ecf4d55'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
