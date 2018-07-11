$ErrorActionPreference = 'Stop';

$packageName    = 'vpnarea'
$installerType  = 'exe'
$url            = 'https://vpnarea.com/VPNArea.exe'
$checksum       = '145AF4ACBD58D3FE9E964CC22BD8176027F97FCA8BFEA0E8FF7F2E6893FE70E1'
$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$silentArgs     = '/S'
$validExitCodes = @(0)

$packageArgs = @{
  packageName   = $packageName
  fileType      = $installerType
  url           = $url
  silentArgs    = $silentArgs
  validExitCodes= $validExitCodes
  softwareName  = 'vpnarea*'
  checksum      = $checksum
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
