$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wifiguard'
  installerType  = 'exe'
  url            = 'https://www.softperfect.com/download/files/wifiguard_windows_setup.exe'
  checksum       = '43ce6e5b9a567dadcf4e81f741d67ee6fcb386ae0978850215bac5df10288790'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  softwareName   = 'SoftPerfect WiFi Guard'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
