$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/browsinghistoryview.zip'
  url64          = 'https://www.nirsoft.net/utils/browsinghistoryview-x64.zip'
  checksum       = '718af26e819c6caef1bf9ebb5afee58b30e07572cc380f30f79f8663ca1b594d'
  checksum64     = 'a076ab9670f8abfb0e3c75e2dc733904110233e06958b220495768e1a2e81d5e'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'BrowsingHistoryView'
}
Install-ChocolateyZipPackage @packageArgs
