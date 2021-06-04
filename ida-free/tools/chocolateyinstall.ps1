$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'ida-free'
  fileType       = 'exe'
  url            = 'https://out7.hex-rays.com/files/idafree76_windows.exe'
  silentArgs     = "--unattendedmodeui minimal --mode unattended --installpassword freeware"
  softwareName   = '*idafree*'
  checksum       = '2ECC5B2F5329C4E7A4243634801180BE38A397C31A330324C8ABC605F5DFFB9E'
  checksumType   = 'sha256'
  validExitCodes = @(0, 3010, 1641)
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
