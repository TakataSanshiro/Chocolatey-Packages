$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-2.3.1-05354.exe'
  checksum       = 'd6df99d0c4a70fc4e22470ac9076e722e4e20b28b0acc6c6f518af0bf4e6a34b'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-2.3.1-05354.exe'
  checksum64     = 'e31a3c5903787908e14805ae731ea5fb9ec84ae7272160a9f1053e516c25ecde'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
