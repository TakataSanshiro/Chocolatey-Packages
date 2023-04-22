$ErrorActionPreference = 'Stop';

$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "perfect-privacyInstall.ahk"
Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName    = 'perfect-privacy'
  fileType       = 'exe'
  url            = 'https://www.perfect-privacy.com/downloads_public/Perfect-Privacy-VPN_Setup.exe'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'perfect-privacy*'
  checksum       = 'd397d69ef691544f8fc75df278eb7fa00f65660af6094f972d690140c3c9deaf'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
