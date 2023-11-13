$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/dnsdataview.zip'
  checksum       = 'c6e8607093f3100c2a0d45a168e665d38ccae0ade36ac4032ef80142f6a1feb8'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'DNSDataView'
}
Install-ChocolateyZipPackage @packageArgs
