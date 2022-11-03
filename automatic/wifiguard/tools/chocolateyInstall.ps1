$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wifiguard'
  installerType  = 'exe'
  url            = 'https://www.softperfect.com/download/files/wifiguard_windows_setup.exe'
  checksum       = 'f7469c6f9e0f9ba7ee99d0dbc065e4973fa7c0515e6e4801df9f755f4d4297f4'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  softwareName   = 'SoftPerfect WiFi Guard'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
