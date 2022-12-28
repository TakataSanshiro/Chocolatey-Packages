$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'glasswire'
  installerType  = 'exe'
  url            = 'https://download.glasswire.com/GlassWireSetup.exe'
  checksum       = '0c0a48aa2f9e96aba08465e91a330d574ab7e6badfb8b9e17d7cf38669a6ea26'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Glasswire*'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
