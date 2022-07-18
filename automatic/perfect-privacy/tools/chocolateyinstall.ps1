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
  checksum       = 'fec11c729d6c190382b4173714b8f50c1d94ec3a1bd9d3ec058b4e6293241368'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
