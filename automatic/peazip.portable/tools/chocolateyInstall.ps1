$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/peazip/PeaZip/releases/download/10.5.0/peazip_portable-10.5.0.WINDOWS.zip'
  url64          = 'https://github.com/peazip/PeaZip/releases/download/10.5.0/peazip_portable-10.5.0.WIN64.zip'
  checksum       = 'eb85a3fe7962f2e3a82947010a85e9f6b589f4f90ad9a3c7c4da0b136e34a11f'
  checksum64     = 'b751d9d4d9f486fc4356f30da938003a75c6d02ea1db9c41cfed67ad7d3e6d61'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'peazip.portable'
}
Install-ChocolateyZipPackage @packageArgs
