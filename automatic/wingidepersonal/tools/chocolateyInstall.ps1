$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wingidepersonal'
  installerType  = 'exe'
  url            = 'https://wingware.com/pub/wing-personal/8.3.0.0/wing-personal-8.3.0.0.exe'
  checksum       = '345bc2d547693b4a32016d6a70364e21eb9bea4b057fbd4d2224e5b6e39ddd06'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'WingIDEpersonal'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
