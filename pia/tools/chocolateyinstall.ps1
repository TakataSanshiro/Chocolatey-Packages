$ErrorActionPreference = 'Stop';

$packageName    = 'pia'
$installerType  = 'exe'
$url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-1.2-02681.exe'
$checksum       = 'B0095907D73BD5F50193621B6F0B9AE0F9E64BA90E39F364E217346143C29386'
$checksumType   = 'sha256'
$url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-1.2-02681.exe'
$checksum64     = '32380B5476933A5D8AD09ABFB90FC077053B356C1D63263195FBFF95CF356A27'
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
