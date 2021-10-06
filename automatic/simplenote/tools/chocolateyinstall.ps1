$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'simplenote'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/simplenote-electron/releases/download/v2.20.0/Simplenote-win-2.20.0.exe'
  checksum       = '3e8fa9d632b48fdaccd6ce639888876fbe13790dc9d2b1f3c4b35538f1d2213d'
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'Simplenote*'
}
Install-ChocolateyPackage @packageArgs
