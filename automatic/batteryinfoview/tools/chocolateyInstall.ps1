$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/batteryinfoview.zip'
  checksum       = 'c70d21d8997a498000bbdce36e7ee6260176f918aee85e56a66ac334bd53f8de'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'BatteryInfoView'
}
Install-ChocolateyZipPackage @packageArgs
