$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'networkusageview'
  url            = 'https://www.nirsoft.net/utils/networkusageview.zip'
  url64          = 'https://www.nirsoft.net/utils/networkusageview-x64.zip'
  checksum       = 'e7a07916f0d610b4801c710381096298e4a2b05458165c11067bc2fec3751372'
  checksum64     = '2372c1e333767cd2501b994405063c37ee815d7fa7d03c66f847cdf7382817ac'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'NetworkUsageView*'
}
Install-ChocolateyZipPackage @packageArgs
