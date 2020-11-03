$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-2.5.1-05676.exe'
  checksum       = 'd7f41a1af37c861c3bc29bbe39c52fb16391a9ac6f050b6c3c38fb121408b80d'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-2.5.1-05676.exe'
  checksum64     = '5b07b198a5cb3662336f05650c26084fb074b20053fae13333acccb5bfc2cbcd'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
