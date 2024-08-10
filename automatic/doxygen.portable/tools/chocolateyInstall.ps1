$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.doxygen.nl/files/doxygen-1.12.0.windows.x64.bin.zip'
  checksum       = '07f1c92cbbb32816689c725539c0951f92c6371d3d7f66dfa3192cbe88dd3138'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'doxygen.portable'
}
Install-ChocolateyZipPackage @packageArgs
