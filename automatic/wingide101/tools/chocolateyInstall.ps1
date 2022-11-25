$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wingide101'
  installerType  = 'exe'
  url            = 'https://wingware.com/pub/wing-101/9.0.1.0/wing-101-9.0.1.0.exe'
  checksum       = 'b0a9f2fc025d5a426c7cd7cb1919a8d87ba0c21d5bd182b4e3699f61103838b2'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'WingIDE101'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
