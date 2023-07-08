$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'puredata'
  installerType  = 'exe'
  url            = 'http://msp.ucsd.edu/Software/pd-0.54-0.windows-installer.exe'
  checksum       = '09eb8ea32df8ab39f99f676462860f0ddc1d56656a944495c543e316322c8ee3'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'PureData'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
