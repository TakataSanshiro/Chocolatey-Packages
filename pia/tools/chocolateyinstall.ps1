$ErrorActionPreference = 'Stop';

$packageName    = 'pia'
$installerType  = 'exe'
$url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-1.1.1-02545.exe'
$checksum       = '8adaf7e48a8c0378b69f91d0057cdf24d2eab01ad5b10f3165331ca47f58a4d1'
$checksumType   = 'sha256'
$url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-1.1.1-02545.exe'
$checksum64     = 'aeabea7f3a489920b28fdfe1e113702a412d7e76353968f068048e8a938a2121'
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
