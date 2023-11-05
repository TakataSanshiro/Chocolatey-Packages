$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'zerobrane-studio.portable'
  url            = 'https://download.zerobrane.com/ZeroBraneStudioEduPack-2.01-win32.zip'
  checksum       = '3e200bb0c3ef6201d50cd34e5a7c9712a63600168dabe1ea6003ef01032affa4'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'zerobrane-studio.portable'
}
Install-ChocolateyZipPackage @packageArgs
