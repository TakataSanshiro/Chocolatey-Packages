$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wifiguard'
  installerType  = 'exe'
  url            = 'https://www.softperfect.com/download/files/wifiguard_windows_setup.exe'
  checksum       = 'ed9384af090bf8365fed525d1f1dafde554329c659c597c12973983994c43c3c'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  softwareName   = 'SoftPerfect WiFi Guard'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
