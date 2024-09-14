$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'puredata'
  installerType  = 'exe'
  url            = 'http://msp.ucsd.edu/Software/pd-0.55-1.windows-installer.exe'
  checksum       = '91c21823f977b5597ffe29dd51bdfac3009b9415a1a73d50f50d870edce54cd0'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'PureData'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
