$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'simplenote'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/simplenote-electron/releases/download/v1.14.0/Simplenote-win-1.14.0.exe'
  checksum       = '5bcfb6f78f3c72167c18641ffb4ef71bb4a9ae9da60df55d498e8be487d59cde'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Simplenote*'
}
Install-ChocolateyPackage @packageArgs
