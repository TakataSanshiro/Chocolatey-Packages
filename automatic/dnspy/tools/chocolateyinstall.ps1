$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'dnspy'
  url            = 'https://github.com/0xd4d/dnSpy/releases/download/v6.1.6/dnSpy-net472.zip'
  checksum       = 'f253e72c2ba84e75acf711ebfd38e7f62e5f809a6ae584439ba20279327e2e8a'
  checksumType   = 'sha256'
  softwareName   = 'dnSpy'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
