$ErrorActionPreference = 'Stop';

$packageName    = 'protonvpn'
$installerType  = 'exe'
$url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.3.0.exe'
$checksum       = '749FAB1BA256C36C662ABA88C54071FAC802ADDD4167E9F05A31E514831D2EC0'
$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$silentArgs     = '/quiet'
$validExitCodes = @(0)
$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "protonvpnInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName   = $packageName
  fileType      = $installerType
  url           = $url
  silentArgs    = $silentArgs
  validExitCodes= $validExitCodes
  softwareName  = 'ProtonVPN*'
  checksum      = $checksum
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
Start-Sleep -s 30