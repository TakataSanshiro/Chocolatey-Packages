$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-2.7-06158.exe'
  checksum       = '2b6de4347c1339306f3807ab1c953f178a860a43005d5f98d589746cacc251aa'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-2.7-06158.exe'
  checksum64     = '8f46a3c4452b91205073427175688c1f53346e8fe5777b758879f15ccc862ab1'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
