$ErrorActionPreference = 'Stop';

$packageName    = 'vpnac'
$installerType  = 'exe'
$url            = 'https://vpn.ac/download/vpn.ac-setup.exe'
$checksum       = '13D9ED3F84FDDC2644E101A48A9A64E1F2C3A01E99EE89561B9380D6983C9911'
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
