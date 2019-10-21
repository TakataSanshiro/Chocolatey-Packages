$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'mamp'
  fileType       = 'exe'
  url            = 'https://downloads.mamp.info/MAMP-PRO-WINDOWS/releases/4.1.1/MAMP_MAMP_PRO_4.1.1.exe'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'MAMP*'
  checksum       = 'e16b9b98e5bd72329c9587ccdcb67e9f9b309161f41d002645ba18a06c892ea6'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs