$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-3.0.1-06696.exe'
  checksum       = '77f655bb4c2f81be72a2a3910a80b1474491c063003ebc1a4be49cd29bc7d317'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-3.0.1-06696.exe'
  checksum64     = 'bf69fe2e83a9d8963ac3a43ab3439e3961e083bc0345b870374ce1e786302a14'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
