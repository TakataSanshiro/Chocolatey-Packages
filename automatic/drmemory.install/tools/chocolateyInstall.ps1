$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'drmemory.install'
  installerType  = 'msi'
  url            = 'https://github.com/DynamoRIO/drmemory/releases/download/release_2.2.0/DrMemory-Windows-2.2.0-1.msi'
  checksum       = '4847a0134e998ded9f826910c00b998e1f32f814e1cbd2873120a59017b433e0'
  checksumType   = 'sha256'
  silentArgs     = '/qn'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'drmemory*'
}
Install-ChocolateyPackage @packageArgs
