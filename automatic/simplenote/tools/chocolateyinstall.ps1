$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'simplenote'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/simplenote-electron/releases/download/v2.6.0/Simplenote-win-2.6.0.exe'
  checksum       = 'BE886AF4D19212D29C8B1F73AD3BA0DF3CFD800D6346536DBE7C355E4509AF84'
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'Simplenote*'
}
Install-ChocolateyPackage @packageArgs
