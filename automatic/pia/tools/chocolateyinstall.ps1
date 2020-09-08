$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-2.4-05574.exe'
  checksum       = '2ba5ad0a4fef360d4cf725ca09d4fedd59349c3c3dae969b4d900e7b370a763e'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-2.4-05574.exe'
  checksum64     = '035a3b7019deb97da7abefa50d7d40324c5d63056a79a50926628066de45d00e'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
