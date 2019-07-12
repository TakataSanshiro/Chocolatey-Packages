$ErrorActionPreference = 'Stop';

$packageName    = 'pia'
$installerType  = 'exe'
$url            = 'https://installers.privateinternetaccess.com/download/pia-windows-x86-1.3.2-02865.exe'
$checksum       = '220a2d27b24e255a94ac22a7e57d8d91777e6d095b4ce6b520bce9be12a61d6c'
$checksumType   = 'sha256'
$url64          = 'https://installers.privateinternetaccess.com/download/pia-windows-x64-1.3.2-02865.exe'
$checksum64     = 'a6ec87b263baeafa64ff2a9f8ca63fead3fed4f9489dcf8972392ce91ebf66c2'
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
