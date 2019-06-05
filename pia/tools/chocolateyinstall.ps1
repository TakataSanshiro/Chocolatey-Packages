$ErrorActionPreference = 'Stop';

$packageName    = 'pia'
$installerType  = 'exe'
$url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-1.2.1-02688.exe'
$checksum       = '7fedf00c98d81d025f9864c9339e3caaeda6a037d1c4be2f3555755b742ce3a5'
$checksumType   = 'sha256'
$url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-1.2.1-02688.exe'
$checksum64     = 'cf8bad583fb6015cf34a894a56b86ea1e9104bb01734a79d19d69fd0817caeb5'
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
