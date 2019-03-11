$ErrorActionPreference = 'Stop';

$packageName    = 'perfect-privacy'
$installerType  = 'exe'
$url            = 'https://www.perfect-privacy.com/downloads_public/Perfect-Privacy-VPN_Setup.exe'
$checksum       = '62E5E3DC16855807124124301A8151D4EE7CAF443C17E80A312A0F67EEC11F92'
$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$silentArgs     = '/S'
$validExitCodes = @(0)

$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "perfect-privacyInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName   = $packageName
  fileType      = $installerType
  url           = $url
  silentArgs    = $silentArgs
  validExitCodes= $validExitCodes
  softwareName  = 'perfect-privacy*'
  checksum      = $checksum
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
