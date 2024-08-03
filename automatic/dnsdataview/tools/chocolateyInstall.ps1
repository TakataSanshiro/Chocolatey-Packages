$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/dnsdataview.zip'
  checksum       = '1475407a849f37c59e97d89b832b839caa60d68a8178abaa382e1cab205230ea'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'DNSDataView'
}
Install-ChocolateyZipPackage @packageArgs
