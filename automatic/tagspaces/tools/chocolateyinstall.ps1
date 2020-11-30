$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v3.7.8/tagspaces-win-x64-3.7.8.zip'
  checksum       = 'cd1b3cba1daacacab54e785a7bc8e892e68641fe7e5d5b4e48e3695cee3ac460'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
