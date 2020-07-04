$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-2.2-05190.exe'
  checksum       = '915f6ffa125e32d1e8b1b4123296bb2f4f651e4806073f167e57304bf8ed5b00'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-2.2-05190.exe'
  checksum64     = '58404fb7b5ea4c69bfa66b988bfde40af19ac75c4ed973e71d591b4ed576c110'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
