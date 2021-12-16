$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-3.2-06857.exe'
  checksum       = 'a3200d2e99cb3833a25439c5b666e8dba02bf3a5f8d44d4dcdd5bc9512aaccc5'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-3.2-06857.exe'
  checksum64     = '243aa77a41d984dce4058f8eb6a96ef7f609b892f32652ac4c2566398065fe7d'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
