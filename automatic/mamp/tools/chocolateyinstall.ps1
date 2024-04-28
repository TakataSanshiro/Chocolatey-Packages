$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'mamp'
  fileType       = 'exe'
  url            = 'https://downloads.mamp.info/MAMP-PRO-WINDOWS/releases/5.0.6/MAMP_MAMP_PRO_5.0.6.exe'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'MAMP*'
  checksum       = 'ae966822ead0b6ff3ffe172ab40fbaebfd01d22785cc533a1a8a2a2ffcb148db'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
