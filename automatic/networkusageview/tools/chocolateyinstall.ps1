$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'networkusageview'
  url            = 'https://www.nirsoft.net/utils/networkusageview.zip'
  url64          = 'https://www.nirsoft.net/utils/networkusageview-x64.zip'
  checksum       = '4b17927cc2ac3872207cc44be31a1f8cbf7cf2c99248f51f6b1ebc5a0c8a92a6'
  checksum64     = 'd5dad387adb4dcb2ee95d1dbc6517498e220ab823eb613c2764977ed13474e2a'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'NetworkUsageView*'
}
Install-ChocolateyZipPackage @packageArgs
