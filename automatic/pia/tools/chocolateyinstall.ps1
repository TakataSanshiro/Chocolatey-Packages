$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-1.6.1-03773.exe'
  checksum       = 'e73861642328c5de794e96701bf84cb03a9986b087c3c50f0f40c26dbcb87f70'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-1.6.1-03773.exe'
  checksum64     = '890f555ea36e3f978c65c26712ed03ebd00fe874952414a0597eeb6212c253c5'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
