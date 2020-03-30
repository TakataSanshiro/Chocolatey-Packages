$ErrorActionPreference = 'Stop';
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
. $toolsPath\helpers.ps1

$packageArgs = @{
  packageName    = 'drmemory.install'
  installerType  = 'msi'
  url            = 'https://github.com/DynamoRIO/drmemory/releases/download/release%5F2.3.18351/DrMemory-Windows-2.3.18351.msi'
  checksum       = '72d69ff7151ecee5346b57995150358e2e545ddc518525e849da2bbb5017bece'
  checksumType   = 'sha256'
  silentArgs     = '/qn'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Dr. Memory*'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
