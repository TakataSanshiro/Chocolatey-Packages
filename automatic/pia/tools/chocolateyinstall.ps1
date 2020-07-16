$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-2.2.2-05198.exe'
  checksum       = '88256a8beddb50cbe3d59ef2ca61e61341859f9738d4bf25ce150879e7f32d58'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-2.2.2-05198.exe'
  checksum64     = 'ceb66df2ad02d887f93045b7f1b5e02ac04b23d826915de395c07a867b91ba61'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
