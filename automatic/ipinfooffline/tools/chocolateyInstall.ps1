$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/ipinfooffline.zip'
  checksum       = 'a9a19a6a0230df524481cb28dbb44d9668ae847d4de38bbd1487a12fa20dceca'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'IPInfoOffline'
}
Install-ChocolateyZipPackage @packageArgs
