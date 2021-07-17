$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-2.10-06571.exe'
  checksum       = '49b3813cd310ee9bd5f22315051b284c3446650f5bbfeb015a564c146c2e81c9'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-2.10-06571.exe'
  checksum64     = '6ddb8e210e4f2d7a7ad494045bff6c8d935f89256b3d5e520898a0a44c2855bf'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
