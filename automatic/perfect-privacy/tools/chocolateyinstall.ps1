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
  validExitCodes = @(0, 1223)
  softwareName   = 'perfect-privacy*'
  checksum       = 'f36530a3a070bae3ac45c4d3ccf23da95a7064b41660aa33373323386a7d7989'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
