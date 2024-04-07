$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.7.12/tagspaces-win-x64-5.7.12.zip'
  checksum       = 'cebeabae5e9a9ed37dbd13f2e07990e9b35c3559d4fd31574add193f8f238066'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
