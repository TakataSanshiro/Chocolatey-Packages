$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.doxygen.nl/files/doxygen-1.9.8.windows.x64.bin.zip'
  checksum       = '03f98f585acee18df0575262feffccc8a93a5aeacd4ee8c21872aeef12532244'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'doxygen.portable'
}
Install-ChocolateyZipPackage @packageArgs
