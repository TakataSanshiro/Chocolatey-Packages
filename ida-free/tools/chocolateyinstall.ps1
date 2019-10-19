$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'ida-free'
  fileType       = 'exe'
  url            = 'https://out7.hex-rays.com/files/idafree70_windows.exe'
  silentArgs     = "--unattendedmodeui minimal --mode unattended --installpassword freeware"
  softwareName   = '*idafree*'
  checksum       = '64C4073CA57DC612963413C337FD7F802BF812E01E655D0F4F33827342F7A772'
  checksumType   = 'sha256'
  validExitCodes = @(0, 3010, 1641)
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs