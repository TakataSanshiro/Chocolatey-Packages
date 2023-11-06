$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/runasdate.zip'
  url64          = 'https://www.nirsoft.net/utils/runasdate-x64.zip'
  checksum       = 'ceec79526b06703c1806771b5af45b282b8511ba071b1ed5e702a7e8b46027b8'
  checksum64     = '647ea1883269a8478a4c84cd33f4b8a6f1dab0aa2bf3703e7f344827fc8a3d9e'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'RunAsDate'
}
Install-ChocolateyZipPackage @packageArgs
