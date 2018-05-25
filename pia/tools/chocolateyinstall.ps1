$ErrorActionPreference = 'Stop';

$packageName    = 'pia'
$installerType  = 'exe'
$url            = 'https://installers.privateinternetaccess.com/download/pia-v80-installer-win.exe'
$checksum       = '45838571bef6ee9bda8694475f71e0b6fdf2c12192a228335abf9d36ad8811c4'
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
