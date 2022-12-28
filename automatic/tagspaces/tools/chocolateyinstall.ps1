$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.1.4/tagspaces-win-x64-5.1.4.zip'
  checksum       = 'c256eaf2d6c45bf89a70ebf5087ebe34002598d33fae4da9d660f0142e852f30'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
