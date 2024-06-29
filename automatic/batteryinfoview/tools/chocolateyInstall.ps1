$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/batteryinfoview.zip'
  checksum       = 'ecbf6ecb79d19c821f04c39f5c622ed85c38f5a6deeedc442366f175a2d016e1'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'BatteryInfoView'
}
Install-ChocolateyZipPackage @packageArgs
