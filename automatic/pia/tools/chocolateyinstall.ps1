$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-3.1.2-06767.exe'
  checksum       = 'ffd1c180a6bc1529f388bf60627d85daa2500daf33f5c4ae266795500fbab06d'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-3.1.2-06767.exe'
  checksum64     = 'a19c534721b6603ebafafd8f6fdd9d6de428a023232c3bb60de5b95779faf6c4'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
