$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/browsinghistoryview.zip'
  url64          = 'https://www.nirsoft.net/utils/browsinghistoryview-x64.zip'
  checksum       = '1cc45acf429d705ee592af1c9e56ac25f5b5acbc27fe555db5007c8be9cc4c42'
  checksum64     = '19a43d7ebc516f2344e6ffac66205d54cbde907e2eb1fb6171934d292524c5c7'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'BrowsingHistoryView'
}
Install-ChocolateyZipPackage @packageArgs
