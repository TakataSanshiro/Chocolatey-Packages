$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.doxygen.nl/files/doxygen-1.13.0.windows.x64.bin.zip'
  checksum       = '31174e6e3b04fd65cffde6b86644203cee69387c357b5ba7feb9eca9011bf09b'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'doxygen.portable'
}
Install-ChocolateyZipPackage @packageArgs
