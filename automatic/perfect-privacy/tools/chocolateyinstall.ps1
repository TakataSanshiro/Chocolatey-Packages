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
  checksum       = '18f7f646418d267a51db1f7e887888ffe421828f5d1cec073d6a016ab5453211'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
