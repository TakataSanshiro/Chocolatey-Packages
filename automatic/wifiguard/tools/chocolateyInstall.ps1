$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wifiguard'
  installerType  = 'exe'
  url            = 'https://www.softperfect.com/download/files/wifiguard_windows_setup.exe'
  checksum       = '6a977788894a1581c2062b2d23d521e51df4fe3b659942db43d345a12111f6fc'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  softwareName   = 'SoftPerfect WiFi Guard'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
