$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-2.6-05820.exe'
  checksum       = 'aef215e7be4fa0df4f428ffc51483dffc76b3619f98bab81884fa42d37d2e042'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-2.6-05820.exe'
  checksum64     = '62d0d7f69e45d82c5a7ac3b202b41977d71cc522a03301768435dc46be9cd02c'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
