$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'networkusageview'
  url            = 'https://www.nirsoft.net/utils/networkusageview.zip'
  url64          = 'https://www.nirsoft.net/utils/networkusageview-x64.zip'
  checksum       = 'd71658e7472c1b2b0c48d28bc39d9a918f8f911995ea7923aafc687fbbbfa7a1'
  checksum64     = 'a675ed51675b01f627b0db5cf82d756222defd8148dcb708c5975ae3ee049ff4'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'NetworkUsageView*'
}
Install-ChocolateyZipPackage @packageArgs
