$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'uninstallview'
  url            = 'https://www.nirsoft.net/utils/uninstallview.zip'
  url64          = 'https://www.nirsoft.net/utils/uninstallview-x64.zip'
  checksum       = '5e297437077f67a29f91fc0f5a14a6d2b82d966f4081973afc277103a6fd3e04'
  checksum64     = 'b015a958f8e5047c8f13908ead921bcb805ba823208fddfbd509352ed238031b'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'Uninstallview'
}
Install-ChocolateyZipPackage @packageArgs
