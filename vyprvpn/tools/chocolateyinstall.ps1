$ErrorActionPreference = 'Stop';

$packageName    = 'vyprvpn'
$installerType  = 'exe'
$url            = 'https://www.goldenfrog.com/downloads/vyprvpn/desktop/windows/production/2.15.0.8591/VyprVPN-2.15.0.8591-installer.exe'
$checksum       = '9BC54A1E76AA46AD132B8C92550313FC090EA4A6FCA6DAD2279DF1372DDBEF01'
$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$silentArgs     = '/S'
$validExitCodes = @(0)

$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "vyprvpnInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName   = $packageName
  fileType      = $installerType
  url           = $url
  silentArgs    = $silentArgs
  validExitCodes= $validExitCodes
  softwareName  = 'vyprvpn*'
  checksum      = $checksum
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
