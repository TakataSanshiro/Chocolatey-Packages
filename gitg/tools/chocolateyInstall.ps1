$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'gitg'
  installerType  = 'msi'
  url            = 'https://ftp.gnome.org/pub/GNOME/binaries/win64/gitg/3.32/gitg-x86_64-3.32.1.msi'
  checksum       = 'E11A254BB3CDE97E50B0304699851F3B0CA2AD83C123D678C2578DF5A998A132'
  checksumType   = 'sha256'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'Gitg*'
}
Install-ChocolateyPackage @packageArgs
