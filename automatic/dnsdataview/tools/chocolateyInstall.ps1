$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/dnsdataview.zip'
  checksum       = '2b7168de8e9e968668e8579f45a910bd6f6c63372911800f885bad4b91901f7c'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'DNSDataView'
}
Install-ChocolateyZipPackage @packageArgs
