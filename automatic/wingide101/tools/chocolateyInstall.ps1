$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wingide101'
  installerType  = 'exe'
  url            = 'https://wingware.com/pub/wing-101/10.0.4.0/wing-101-10.0.4.0.exe'
  checksum       = 'fe6133cec5c351d9c22d906ad194a8b3f39ba39c1ea3e4b2e77e557a4090bbe0'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'WingIDE101'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
