$ErrorActionPreference = 'Stop';

$packageName    = 'vpnac'
$installerType  = 'exe'
$url            = 'https://vpn.ac/download/vpn.ac-setup.exe'
$checksum       = 'D41664960F66169F90985E2950DE032D8387CAACCE106C510324F037F70FCA3D'
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
