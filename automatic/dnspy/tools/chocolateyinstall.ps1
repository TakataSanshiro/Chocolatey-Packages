$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'dnspy'
  url            = 'https://github.com/0xd4d/dnSpy/releases/download/v6.1.5/dnSpy-net472.zip'
  checksum       = 'c5046bda93b3d4c23cdd715ced2f92e3d5a5f95ca6cdb6245d9be68733891583'
  checksumType   = 'sha256'
  softwareName   = 'dnSpy'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
