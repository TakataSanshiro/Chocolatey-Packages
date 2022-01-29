$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'networktrafficview'
  url            = 'https://www.nirsoft.net/utils/networktrafficview.zip'
  url64          = 'https://www.nirsoft.net/utils/networktrafficview-x64.zip'
  checksum       = '8cd9beb0325627dedb7ce5cfb23b70e1c8ee18ac97450a684fcb0abf5c3bf61c'
  checksum64     = '1ec419404d0545ecce98d1c37a3210b8163c7be038ebfdfdf20531972f333ef1'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'NetworkTrafficView*'
}
Install-ChocolateyZipPackage @packageArgs
