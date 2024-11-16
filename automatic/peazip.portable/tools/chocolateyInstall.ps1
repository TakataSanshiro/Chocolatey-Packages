$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/peazip/PeaZip/releases/download/10.1.0/peazip_portable-10.1.0.WINDOWS.zip'
  url64          = 'https://github.com/peazip/PeaZip/releases/download/10.1.0/peazip_portable-10.1.0.WIN64.zip'
  checksum       = '4ca323bb0f04a4257f87b525f974782dcfabbf7a7b2477b7d221d16bffdccb3e'
  checksum64     = 'cf9a2f97c93996aea1f2f655a184e0ff7f2fcc578e14f9967fee69ed8e4419c3'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'peazip.portable'
}
Install-ChocolateyZipPackage @packageArgs
