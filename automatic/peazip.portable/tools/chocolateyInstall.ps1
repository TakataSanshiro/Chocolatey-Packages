$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/peazip/PeaZip/releases/download/10.0.0/peazip_portable-10.0.0.WINDOWS.zip'
  url64          = 'https://github.com/peazip/PeaZip/releases/download/10.0.0/peazip_portable-10.0.0.WIN64.zip'
  checksum       = 'dd161ca444cdc25444e54dff5104aa1474e250ad5681fddcfae49366ffc150ff'
  checksum64     = '35e4f932a6d8740590021385444db7d4cc3eb7d8f507c19fcf9c9356abb6efb7'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'peazip.portable'
}
Install-ChocolateyZipPackage @packageArgs
