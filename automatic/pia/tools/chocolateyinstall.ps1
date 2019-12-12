$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-1.7-03949.exe'
  checksum       = 'f88382c1557566cbc7e988ff7c5ece12dab7c46ba119e8860304488a35529111'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-1.7-03949.exe'
  checksum64     = '78b8058e427c0c6b26be6bd2461652a2b223d5f4deee796601fd66a7841a9e8b'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
