$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'dnspy'
  url            = 'https://github.com/0xd4d/dnSpy/releases/download/v6.0.5/dnSpy-net472.zip'
  checksum       = '7fc52afe2728f2b02d31a98ce0b26ad10295b1f93fa6a944350acfd070a40baa'
  checksumType   = 'sha256'
  softwareName   = 'dnSpy'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
