$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'vpnac'
  fileType      = 'exe'
  url           = 'https://vpn.ac/download/vpn.ac-setup.exe'
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'vpnac*'
  checksum      = '86e6faa4b57bdcd1688d9270198e7bafb1601db39042b6b4a2d4214cd730dcf3'
  checksumType  = 'sha256'
  toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
