$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'networktrafficview'
  url            = 'https://www.nirsoft.net/utils/networktrafficview.zip'
  url64          = 'https://www.nirsoft.net/utils/networktrafficview-x64.zip'
  checksum       = 'cb510fd0f398ca2dbd7dddebf014dae1d9e60858929db38c3baea53f5c9e671d'
  checksum64     = '5fcb50821a699163aca831409a4c4e296c901daa197afd60cb9c57ea802a2e9b'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'NetworkTrafficView*'
}
Install-ChocolateyZipPackage @packageArgs
