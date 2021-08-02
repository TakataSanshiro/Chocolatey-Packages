$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wingidepersonal'
  installerType  = 'exe'
  url            = 'https://wingware.com/pub/wing-personal/8.0.2.0/wing-personal-8.0.2.0.exe'
  checksum       = '5996ece37d0ebf4f5b9879ac308de4570ee66f70a59e4f3103a7bc53192a8a49'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'WingIDEpersonal'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
