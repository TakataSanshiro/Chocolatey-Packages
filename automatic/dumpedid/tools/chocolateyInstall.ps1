$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/dumpedid.zip'
  checksum       = '1773478ecec2d0e7dcb8d41dd3dd1353e26446a4a798ab294a1ce652a9b84609'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'DumpEDID'
}
Install-ChocolateyZipPackage @packageArgs
