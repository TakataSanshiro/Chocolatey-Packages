$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.6.2/tagspaces-win-x64-5.6.2.zip'
  checksum       = '2f0ad37e536f0da5c4a0932f2c58e19863e9fa87ab189f6e904e0332f16821fe'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
