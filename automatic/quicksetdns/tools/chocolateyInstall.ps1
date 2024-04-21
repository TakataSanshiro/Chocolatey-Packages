$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/quicksetdns.zip'
  checksum       = '36e44a30c7bf9158f358604186b2ab4be46c4c2e0da3f97af8df4c06a20461f3'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'QuickSetDNS'
}
Install-ChocolateyZipPackage @packageArgs
