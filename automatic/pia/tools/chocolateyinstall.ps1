$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-1.6-03756.exe'
  checksum       = 'd28dc6b76ff52848480a293684ef09f24fdab5bd92d786715af7cbd53c0c6417'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-1.6-03756.exe'
  checksum64     = '1f438a734e64693bfa92d93fc7fdf01a2d25708bfb97c82b70865d2547906dfa'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
