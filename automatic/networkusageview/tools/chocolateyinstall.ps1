$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'networkusageview'
  url            = 'https://www.nirsoft.net/utils/networkusageview.zip'
  url64          = 'https://www.nirsoft.net/utils/networkusageview-x64.zip'
  checksum       = '5d8e009ce5cad9ecb5089a2929c09292b055bea88584a263f098ca04fe67337a'
  checksum64     = '700431e8f90e97db1764f0f92266bb85970c9e5b7306176e10af682a6491717b'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'NetworkUsageView*'
}
Install-ChocolateyZipPackage @packageArgs
