$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-2.5-05652.exe'
  checksum       = '6fe3ca6772b1e71cefe328ecb296580d9e30c91699522edc79886fe9587ff354'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-2.5-05652.exe'
  checksum64     = '2d1ad0cf8d156c62bc5006547b0cf8650ca73694f0c2c5d7be5eae2c41841bcb'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
