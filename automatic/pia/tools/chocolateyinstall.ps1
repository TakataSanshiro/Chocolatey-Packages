$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-2.0.2-04704.exe'
  checksum       = '291dfee723e9415b0e31a68fc2d3a09648de6493f69f4f2fe069cad2d4e21a3c'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-2.0.2-04704.exe'
  checksum64     = 'd66b686bd251fe6b2350d028be4fa954f53bf6156a66efbebb64229fbbb33d5f'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
