$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'glasswire'
  installerType  = 'exe'
  url            = 'https://download.glasswire.com/GlassWireSetup.exe'
  checksum       = '4934c6c5bf77ab3d7e540bea5b9c1d016d657517d4bc745aa5cb77f82d0b051e'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Glasswire*'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
