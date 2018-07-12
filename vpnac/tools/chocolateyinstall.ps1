$ErrorActionPreference = 'Stop';

$packageName    = 'vpnac'
$installerType  = 'exe'
$url            = 'https://vpn.ac/download/vpn.ac-setup.exe'
$checksum       = 'AEEE7F0C8D2F82D26AC3812A625D9FAA4795E3B4D3BDAF07C07DCAF0A20B8ECA'
$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)

$packageArgs = @{
  packageName   = $packageName
  fileType      = $installerType
  url           = $url
  silentArgs    = $silentArgs
  validExitCodes= $validExitCodes
  softwareName  = 'vpnac*'
  checksum      = $checksum
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
