$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'glasswire'
  installerType  = 'exe'
  url            = 'https://download.glasswire.com/GlassWireSetup.exe'
  checksum       = '8ee2a3aebc0d923c05f6818bd7556da8b55eeaa1a8808f4c11d354782f4909c3'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Glasswire*'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
