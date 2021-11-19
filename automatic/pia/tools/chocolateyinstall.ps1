$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-3.1.1-06763.exe'
  checksum       = 'f72d8bf907f8c686d142f2b8ad7b83f84c702e462c5f4dc63298081b3e62a07d'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-3.1.1-06763.exe'
  checksum64     = 'fbb6471cc721f2f2d957ed99e393230f337b8a383bbb36b69d96c2745e8b4887'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
