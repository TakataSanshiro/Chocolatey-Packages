$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'fontbase'
  installerType  = 'exe'
  url            = 'https://releases.fontba.se/win/FontBase-2.16.3.exe'
  checksum       = '1381477d848c1f519b4d6b26a84ee2c74cbe98462ed95c82fc626befd6beb55c'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Fontbase'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
