$ErrorActionPreference = 'Stop';

$packageName    = 'pia'
$installerType  = 'exe'
$url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-1.5.1-03605.exe'
$checksum       = '2ff74cb87cdf3327caad5ca8af095cecf83deb8055eded91d0f6ef9ae06ebc6b'
$checksumType   = 'sha256'
$url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-1.5.1-03605.exe'
$checksum64     = 'd5a666067aacb52c4e3c0a3e480e77014d77c34838e9eaee5b160cc28e8d7c4e'
$checksumType64 = 'sha256'
$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$silentArgs     = ''
$validExitCodes = @(0)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "piaInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = $packageName
  fileType       = $installerType
  url            = $url
  silentArgs     = $silentArgs
  validExitCodes = $validExitCodes
  softwareName   = 'pia*'
  checksum       = $checksum
  checksumType   = $checksumType
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = $checksumType64
}

Install-ChocolateyPackage @packageArgs
