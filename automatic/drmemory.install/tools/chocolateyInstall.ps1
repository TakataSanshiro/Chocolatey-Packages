$ErrorActionPreference = 'Stop';
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
. $toolsPath\helpers.ps1

$packageArgs = @{
  packageName    = 'drmemory.install'
  installerType  = 'msi'
  url            = 'https://github.com/DynamoRIO/drmemory/releases/download/release%5F2.3.18609-10/DrMemory-Windows-2.3.18609-10.msi'
  checksum       = 'e16ba3a856080b87c64ccbc6de2406e5911387e7bd7f25618434b2526952aee5'
  checksumType   = 'sha256'
  silentArgs     = '/qn /l*v `"$($env:TEMP)\$($env:chocolateyPackageName).$($env:chocolateyPackageVersion).MsiInstall.log`"'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Dr. Memory*'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
