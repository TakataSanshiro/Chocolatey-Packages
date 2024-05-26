$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.doxygen.nl/files/doxygen-1.11.0.windows.x64.bin.zip'
  checksum       = '478fc9897d00ca181835d248a4d3e5c83c26a32d1c7571f4321ddb0f2e97459f'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'doxygen.portable'
}
Install-ChocolateyZipPackage @packageArgs
