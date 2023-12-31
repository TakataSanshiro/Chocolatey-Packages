$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'vpnac'
  fileType      = 'exe'
  url           = 'https://vpn.ac/download/vpn.ac-setup.exe'
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'vpnac*'
  checksum      = 'f85b8cdc6850c7e8fc4e8c2951433dcb6f8b210e9617e9cd4c9a98f3c884b26a'
  checksumType  = 'sha256'
  toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
