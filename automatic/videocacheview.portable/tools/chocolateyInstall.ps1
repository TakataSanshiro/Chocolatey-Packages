$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/videocacheview.zip'
  url64          = 'https://www.nirsoft.net/utils/videocacheview-x64.zip'
  checksum       = '3de45dbd3b3e0cdd911ec75af808dc85bbc59fe21d66cf9e073a71a7e879a649'
  checksum64     = '95f375584f9c80a385efaa88e10cea941b1081f05a49100bebee11a50e2c6bba'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'videocacheview.portable'
}
Install-ChocolateyZipPackage @packageArgs
