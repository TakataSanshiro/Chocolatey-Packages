$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/diskcountersview.zip'
  checksum       = '916de66eaee1fed9ce1b337683dc94d3929cf12c53dd4a6d33c4db8470770c0e'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'DiskCountersView'
}
Install-ChocolateyZipPackage @packageArgs
