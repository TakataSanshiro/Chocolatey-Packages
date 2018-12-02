$ErrorActionPreference = 'Stop';

$packageName    = 'vpnac'
$installerType  = 'exe'
$url            = 'https://vpn.ac/download/vpn.ac-setup.exe'
$checksum       = '7D0B80E87BE9F079467D4CECCE746EFCD66D591A3A4026280BEB470274E8BAA6'
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
