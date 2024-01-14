$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/esedatabaseview.zip'
  checksum       = '1ee30f78b41ac3b8486a798f87d43c4f27dd294713899873b150a432056b234f'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'ESEDatabaseView'
}
Install-ChocolateyZipPackage @packageArgs
