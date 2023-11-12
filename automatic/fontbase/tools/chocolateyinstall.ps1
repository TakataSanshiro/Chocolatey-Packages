$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'fontbase'
  installerType  = 'exe'
  url            = 'https://releases.fontba.se/win/FontBase-2.19.4.exe'
  checksum       = '1ed6eba61a50fedfc121b4a98eba2425a01572ac3278090d212af6bd6da3f396'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Fontbase'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
