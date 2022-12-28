$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'ida-free'
  fileType       = 'exe'
  url            = 'https://out7.hex-rays.com/files/idafree82_windows.exe'
  silentArgs     = "--unattendedmodeui minimal --mode unattended --installpassword freeware"
  softwareName   = '*idafree*'
  checksum       = 'EEAFBE78C97DFD5DDCA8824959C9C3511A7113E527C4658BB47E7D0D937396D1'
  checksumType   = 'sha256'
  validExitCodes = @(0, 3010, 1641)
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
