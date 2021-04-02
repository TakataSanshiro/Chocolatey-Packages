$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-2.8-06331.exe'
  checksum       = '488b23ad652d880a85464fb96d3f9912bb93470bcfa69b40cadb7d7ec9ee99cc'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-2.8-06331.exe'
  checksum64     = '6ad37b60e52400db0652d29b1e572a95105f34fb7df5f5f3bc4c678383aa4a49'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
