$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'networkusageview'
  url            = 'https://www.nirsoft.net/utils/networkusageview.zip'
  url64          = 'https://www.nirsoft.net/utils/networkusageview-x64.zip'
  checksum       = '7a3c434114154af23ff6ca369611dcd24459a89a8ee6933b67af8f481ca4551c'
  checksum64     = '8fbe3ebd116d8d11bc119f0c2ad8b562cd86f496855db01a6ce144c7a08c9eef'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'NetworkUsageView*'
}
Install-ChocolateyZipPackage @packageArgs
