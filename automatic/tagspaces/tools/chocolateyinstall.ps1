$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v6.4.3/tagspaces-win-x64-6.4.3.zip'
  checksum       = '3773b1d5dfcf62fa2f1b1400f746cd9c4fd4dcfd29cd1a4e898b74e1a9857abf'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
