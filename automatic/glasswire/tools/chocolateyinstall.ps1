$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'glasswire'
  installerType  = 'exe'
  url            = 'https://download.glasswire.com/GlassWireSetup.exe'
  checksum       = 'bc5e8ebc088fe7a857d24f7fde40848e8d0f4e234aa33447f65f3cd4111e3d7e'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Glasswire*'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
