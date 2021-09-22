$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'mamp'
  fileType       = 'exe'
  url            = 'https://downloads.mamp.info/MAMP-PRO-WINDOWS/releases/5.0.1/MAMP_MAMP_PRO_5.0.1.exe'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'MAMP*'
  checksum       = '830d040978d3129f8eb44cca7bb4bf72da65a43cf9faf362862231bebe7a9963'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
