$ErrorActionPreference = 'Stop';
$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
. $toolsPath\helpers.ps1

$packageArgs = @{
  packageName    = 'drmemory.install'
  installerType  = 'msi'
  url            = 'https://github.com/DynamoRIO/drmemory/releases/download/release%5F2.6.0/DrMemory-Windows-2.6.0.msi'
  checksum       = 'a44e89df32e3642f6b58d299f906e460056bf0120811ace6c58a096f906ff76e'
  checksumType   = 'sha256'
  silentArgs     = "/qn /l*v `"$($env:TEMP)\$($env:chocolateyPackageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Dr. Memory*'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
