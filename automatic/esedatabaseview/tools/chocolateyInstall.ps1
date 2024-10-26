$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/esedatabaseview.zip'
  checksum       = 'a072548dc488d70dfc7e65d6a99fc4f638268f17448e46d289d6ac287a3415a5'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'ESEDatabaseView'
}
Install-ChocolateyZipPackage @packageArgs
