$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'drmemory.install'
  installerType  = 'msi'
  url            = 'https://github.com/DynamoRIO/drmemory/releases/download/release_2.3.0/DrMemory-Windows-2.3.0-1.msi'
  checksum       = '9e16b52024df8dd59beabe82fa1771ff93a72b3a623751d81d7a4474c9d79729'
  checksumType   = 'sha256'
  silentArgs     = '/qn'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'drmemory*'
}
Install-ChocolateyPackage @packageArgs
