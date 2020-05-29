$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-2.1-04977.exe'
  checksum       = 'e278fb4b91b2c4844e4726f13301fe1424a904fbee572d16e938dd5cb4bb9754'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-2.1-04977.exe'
  checksum64     = 'ef7f8ea4b4a9227d708b2a04d056af2a888c6b8be1baf527bee0d15f3cba7e9d'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
