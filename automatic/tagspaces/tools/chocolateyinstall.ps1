$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v3.3.0/tagspaces-win-x64-3.3.0.zip'
  checksum       = '8eec9145d4be732b664ccbddb4a5ff9e43eddcdff8b572782d26f60f4c1cbacb'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
