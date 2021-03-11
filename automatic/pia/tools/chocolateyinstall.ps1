$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-2.7.1-06182.exe'
  checksum       = '51947a3a7c660d14b72dbc4ac220144555ea710458eaaff9309a06aa78a94f67'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-2.7.1-06182.exe'
  checksum64     = 'f029e76558fd514c28eb31b6488a898b7f272bc89e9fcfa7dceb61698262e0b7'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
