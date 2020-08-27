$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'dnspy'
  url            = 'https://github.com/0xd4d/dnSpy/releases/download/v6.1.7/dnSpy-net472.zip'
  checksum       = '327b6b6775165e725c80067b5b08c98ffdad4c5b471b7a85cef9923d50ee3912'
  checksumType   = 'sha256'
  softwareName   = 'dnSpy'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
