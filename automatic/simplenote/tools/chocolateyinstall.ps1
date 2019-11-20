$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'simplenote'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/simplenote-electron/releases/download/v1.11.0/Simplenote-win-1.11.0.exe'
  checksum       = 'b1c117903c1c3dfd61fa6658d9e4d183aaaaa42f2ff5245d5063afcb1659a13a'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Simplenote*'
}
Install-ChocolateyPackage @packageArgs
