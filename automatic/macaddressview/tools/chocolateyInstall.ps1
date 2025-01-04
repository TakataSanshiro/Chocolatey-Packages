$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/macaddressview.zip'
  checksum       = '78d0a3a637022c48e612ab8cccbaf1b08c6ea42ad8cfeebabd1bb486b4f19016'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'MACAddressView'
}
Install-ChocolateyZipPackage @packageArgs
