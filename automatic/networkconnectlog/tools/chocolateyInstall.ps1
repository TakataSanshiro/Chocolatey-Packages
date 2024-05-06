$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/networkconnectlog.zip'
  checksum       = 'b48e97201145f9d9b15256729e26aceebf28f9a8d8633b9519f5ae9dd9eeeedd'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'NetworkConnectLog'
}
Install-ChocolateyZipPackage @packageArgs
