$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wifiguard'
  installerType  = 'exe'
  url            = 'https://www.softperfect.com/download/files/wifiguard_windows_setup.exe'
  checksum       = '8ed08f5f564ad1b797acc3348449fa87e1ebc2615e536eb394a01162d8e9dd1a'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  softwareName   = 'SoftPerfect WiFi Guard'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
