$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'simplenote'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/simplenote-electron/releases/download/v2.21.0/Simplenote-win-2.21.0.exe'
  checksum       = 'a3f26f4d0d196b152da5cfcafb72ac2f3e82e5041009a20f6958c43f9f478cd8'
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'Simplenote*'
}
Install-ChocolateyPackage @packageArgs
