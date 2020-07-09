$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-2.2.1-05193.exe'
  checksum       = 'a43a822d49711063877c9ac7fe9ec96fd9a0cfd4ea6beafdae54fada5f7c8d15'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-2.2.1-05193.exe'
  checksum64     = 'd701cdde205d6e0c1f667cc54761c57b4cb80244d3805dad88634fb98350e6f1'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
