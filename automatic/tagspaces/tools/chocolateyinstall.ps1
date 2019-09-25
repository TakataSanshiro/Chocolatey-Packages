$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v3.2.3/tagspaces-win-x64-3.2.3.zip'
  checksum       = '1277dea9ee1f7cec5f32db1f2d9ba2fef4d5875ceefdee3c096b971f012ed4e1'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
