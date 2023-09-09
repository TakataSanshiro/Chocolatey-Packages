$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'ida-free'
  fileType       = 'exe'
  url            = 'https://out7.hex-rays.com/files/idafree83_windows.exe'
  silentArgs     = "--unattendedmodeui minimal --mode unattended --installpassword freeware"
  softwareName   = '*idafree*'
  checksum       = '10080a057704630578e697c6bb0b09968a54138075cacab175f62d60c71d0a1f'
  checksumType   = 'sha256'
  validExitCodes = @(0, 3010, 1641)
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
