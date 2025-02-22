$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/whoisconnectedsniffer.zip'
  url64          = 'https://www.nirsoft.net/utils/whoisconnectedsniffer-x64.zip'
  checksum       = '71b37c536a88f17236f0755808ad90114c7afafa89a8193434c339915068dafc'
  checksum64     = '9b2cb79cbed37a3abbca87d4c7d0f9d18ca729b3b295d24d824be3a107813738'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'whoisconnectedsniffer.portable'
}
Install-ChocolateyZipPackage @packageArgs
