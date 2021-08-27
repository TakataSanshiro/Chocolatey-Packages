$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'pia'
  fileType       = 'exe'
  url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-3.0-06692.exe'
  checksum       = 'a41f6c91d64379d9b9f055bf78dec69b3084db8c45b71aae80d8f4d239321013'
  checksumType   = 'sha256'
  silentArgs     = ''
  validExitCodes = @(0)
  softwareName   = 'pia*'
  url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-3.0-06692.exe'
  checksum64     = '6dd79ec5e9a75fa737c1e865307d4f7bcc16247644a37983ea01ab825de2914b'
  checksumType64 = 'sha256'
}
Install-ChocolateyPackage @packageArgs
