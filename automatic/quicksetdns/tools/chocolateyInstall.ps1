$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/quicksetdns.zip'
  checksum       = '187ad7ee48ce5542b888a2da78ffadba7aa3c1898582541811021f2339f9faf6'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'QuickSetDNS'
}
Install-ChocolateyZipPackage @packageArgs
