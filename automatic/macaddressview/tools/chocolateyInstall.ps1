$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/macaddressview.zip'
  checksum       = 'ab0439c04e469f1eb28d6e26c20520a77e16d0188e3b6bf2a547f3716ac785f6'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'MACAddressView'
}
Install-ChocolateyZipPackage @packageArgs
