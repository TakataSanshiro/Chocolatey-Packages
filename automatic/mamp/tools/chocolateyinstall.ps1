$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'mamp'
  fileType       = 'exe'
  url            = 'https://downloads.mamp.info/MAMP-PRO-WINDOWS/releases/5.0/MAMP_MAMP_PRO_5.0.exe'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'MAMP*'
  checksum       = '5deb01a9f07a1a43a76f09f77665cf14dcf88127f20b1c1c80c8b126350b5409'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
