$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'fontbase'
  installerType  = 'exe'
  url            = 'https://releases.fontba.se/win/FontBase-2.13.2.exe'
  checksum       = '439bdfa10cc1af178c81817f7ad884e944cb0841c3740a97d2e89d51df303107'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Fontbase'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
