$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-2.6.1-05824.exe'
  checksum       = '25b2eceadba2a9f762123b0c21e74ef0297fb60eb98a2aae7caffbb927cc46a2'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-2.6.1-05824.exe'
  checksum64     = '5678c41d1341a6001bab58d1eb3ddded7801e7b59ffbe7a249641b45e3a5c599'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
