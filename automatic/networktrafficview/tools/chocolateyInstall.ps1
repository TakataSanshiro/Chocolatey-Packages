$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'networktrafficview'
  url            = 'https://www.nirsoft.net/utils/networktrafficview.zip'
  url64          = 'https://www.nirsoft.net/utils/networktrafficview-x64.zip'
  checksum       = '20698dadfa0233e6de7e3fe5b67305f4f354b9851bc41f977abe0d16a973b72a'
  checksum64     = 'e2de31639fbd776274dae00ce77f4d35b9f3780799b0a8a9828b3851f1a6f94b'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'NetworkTrafficView*'
}
Install-ChocolateyZipPackage @packageArgs
