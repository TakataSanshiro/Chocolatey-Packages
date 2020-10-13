$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'freenet'
  fileType       = 'exe'
  url            = 'https://github.com/freenet/fred/releases/download/build01487/FreenetInstaller-1487.exe'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'Freenet*'
  checksum       = 'cb55befd0ce179b7dd6f85cd0557a250ffb984bc14e783780791588222754150'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
