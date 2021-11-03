$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'mamp'
  fileType       = 'exe'
  url            = 'https://downloads.mamp.info/MAMP-PRO-WINDOWS/releases/5.0.3/MAMP_MAMP_PRO_5.0.3.exe'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'MAMP*'
  checksum       = 'ceb97858e2752775e3fe5e7c01f2727939f39dafb539990c6966c93f73ad9250'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
