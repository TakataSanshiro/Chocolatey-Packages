$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'drmemory.install'
  installerType  = 'msi'
  url            = 'https://github.com/DynamoRIO/drmemory/releases/download/release%5F2.3.18322/DrMemory-Windows-2.3.18322.msi'
  checksum       = '2bc495e12c19a4945082ff1f9b34dd96d50fbdc687752ea4bddd55d797cf0ee0'
  checksumType   = 'sha256'
  silentArgs     = '/qn'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'drmemory*'
}
Install-ChocolateyPackage @packageArgs
