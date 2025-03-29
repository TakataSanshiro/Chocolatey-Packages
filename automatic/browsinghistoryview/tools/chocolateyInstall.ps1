$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/browsinghistoryview.zip'
  url64          = 'https://www.nirsoft.net/utils/browsinghistoryview-x64.zip'
  checksum       = 'ea677d8bae0a26f5fdc30cee895a0d2a0fe280b8b89d2eb977dc65d751da70b6'
  checksum64     = 'fca8fe4ee68f21bb741090eab924048387ef1eb0f3548b8400700a7ee5935571'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'BrowsingHistoryView'
}
Install-ChocolateyZipPackage @packageArgs
