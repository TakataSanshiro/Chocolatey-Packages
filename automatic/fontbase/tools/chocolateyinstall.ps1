$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'fontbase'
  installerType  = 'exe'
  url            = 'https://releases.fontba.se/win/FontBase-2.16.9.exe'
  checksum       = 'dbe2a345ce7e2bce56d23e6463273d3b33b364fcee5205b168a7c7ce668767c9'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Fontbase'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
