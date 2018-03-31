$ErrorActionPreference = 'Stop';

$packageName    = 'pia'
$installerType  = 'exe'
$url            = 'https://installers.privateinternetaccess.com/download/pia-v78-installer-win.exe'
$checksum       = '66E147355EC534C67875FD6CDA457EE9214E15F91F28A567F48B237BE3911555'
$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName   = $packageName
  fileType      = $installerType
  url           = $url
  silentArgs    = $silentArgs
  validExitCodes= $validExitCodes
  softwareName  = 'pia*'
  checksum      = $checksum
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs