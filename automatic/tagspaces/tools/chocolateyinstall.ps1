$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.0.4/tagspaces-win-x64-5.0.4.zip'
  checksum       = '2860b2d212a7e4571a649e783d8fe992ccc98b71d421526299c53dc1af0fd1dc'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
