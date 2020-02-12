$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'zerobrane-studio.portable'
  url            = 'https://download.zerobrane.com/ZeroBraneStudioEduPack-1.90-win32.zip'
  checksum       = 'f72d80951b8f9bbee6aaaceefd4ab68262fee42a9c2a6bd2f63632567722cb40'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'zerobrane-studio.portable'
}
Install-ChocolateyZipPackage @packageArgs
