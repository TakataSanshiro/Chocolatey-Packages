$ErrorActionPreference = 'Stop';

$packageName    = 'vyprvpn'
$installerType  = 'exe'
$url            = 'https://downloads-goldenfrog.netdna-ssl.com/downloads/vyprvpn/desktop/windows/production/2.16.2.8727/VyprVPN-2.16.2.8727-installer.exe'
$checksum       = 'E637CF012D72B3759BBCBB3108B546B7446D2E47030C4AEFD9C24B0F265179F1'
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
