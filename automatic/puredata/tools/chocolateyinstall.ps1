$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'puredata'
  installerType  = 'exe'
  url            = 'http://msp.ucsd.edu/Software/pd-0.52-2.windows-installer.exe'
  checksum       = 'cfc2a91decf0fd195b0ed7d6aa93adb9b356e07f2f0aa51d7efba06bdacd0630'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'PureData'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
