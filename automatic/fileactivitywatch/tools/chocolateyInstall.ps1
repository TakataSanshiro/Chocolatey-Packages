$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/fileactivitywatch.zip'
  url64          = 'https://www.nirsoft.net/utils/fileactivitywatch-x64.zip'
  checksum       = 'a1932da51808ec5748b8ce33d55f14faa358c51ff66b12f92bfab6a3b0161f49'
  checksum64     = '325a472199d0fbcfaf558349c1a3fd18942109ad989bd7dbab654ff93e05b723'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'FileActivityWatch'
}
Install-ChocolateyZipPackage @packageArgs
