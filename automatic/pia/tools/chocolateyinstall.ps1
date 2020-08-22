$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-2.3-05344.exe'
  checksum       = '388388d99742557545ea967dbe52fd1e6dd36525cd5aba8159af8f630fa78b89'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-2.3-05344.exe'
  checksum64     = '5589e1e5cd2a8f6c066f6aebb7de1f02eb5cccc3516453e36111c9f6ec3e3e46'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
