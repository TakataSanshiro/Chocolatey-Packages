$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'ida-free'
  fileType       = 'exe'
  url            = 'https://out7.hex-rays.com/files/idafree81_windows.exe'
  silentArgs     = "--unattendedmodeui minimal --mode unattended --installpassword freeware"
  softwareName   = '*idafree*'
  checksum       = '89f4f2a9235fbd3bf00579653fbb6a9bbc53e89c298080b8be9386f53b1aa5f9'
  checksumType   = 'sha256'
  validExitCodes = @(0, 3010, 1641)
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
