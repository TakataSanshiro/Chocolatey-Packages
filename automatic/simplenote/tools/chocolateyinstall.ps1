$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'simplenote'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/simplenote-electron/releases/download/v2.22.2/Simplenote-win-2.22.2.exe'
  checksum       = 'ddcf547a5928fe48eb5c993c2c10814406ef55e9d180bebb8522ee37ab94e3b1'
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'Simplenote*'
}
Install-ChocolateyPackage @packageArgs
