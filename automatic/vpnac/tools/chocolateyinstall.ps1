$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'vpnac'
  fileType      = 'exe'
  url           = 'https://vpn.ac/download/vpn.ac-setup.exe'
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'vpnac*'
  checksum      = 'c4c41b7f2d8d4ed136ea939f9af0a7c73011bb684b8b59912fe4bc14af4faeef'
  checksumType  = 'sha256'
  toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
