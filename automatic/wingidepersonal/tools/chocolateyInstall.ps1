$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wingidepersonal'
  installerType  = 'exe'
  url            = 'https://wingware.com/pub/wing-personal/7.2.5.0/wing-personal-7.2.5.0.exe'
  checksum       = '89b8001f0ce571ac308623035dea785614ac369c1f1759a89f8400d6b979b770'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'WingIDEpersonal'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
