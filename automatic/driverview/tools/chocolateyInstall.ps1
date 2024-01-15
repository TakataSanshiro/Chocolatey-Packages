$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/driverview.zip'
  url64          = 'https://www.nirsoft.net/utils/driverview-x64.zip'
  checksum       = '0a38cb5b73d08321de1da21fc5b79c999e97bcbbf412d4e7d967bfb071a50d3e'
  checksum64     = '717a6dbb32dbab1fa3dc576e4213c97a8e5e973497e01b1976afaf00cc403f98'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'DriverView'
}
Install-ChocolateyZipPackage @packageArgs
