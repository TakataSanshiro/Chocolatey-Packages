$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/peazip/PeaZip/releases/download/9.8.0/peazip_portable-9.8.0.WINDOWS.zip'
  url64          = 'https://github.com/peazip/PeaZip/releases/download/9.8.0/peazip_portable-9.8.0.WIN64.zip'
  checksum       = '73ac51b9e0be88498cbb3e7bf1fb5e237413ffa87f09c2cdd6a899bf84d1d0ed'
  checksum64     = '696764ea12de65fdc097fcc6ce66ed846580ada4c8ed5630ba205736c6a25db8'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'peazip.portable'
}
Install-ChocolateyZipPackage @packageArgs
