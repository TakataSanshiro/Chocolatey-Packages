$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v6.2.1/tagspaces-win-x64-6.2.1.zip'
  checksum       = '2c43ec9c15cbba11b4686adeba38eb44ed2a1a2f159eb44ffa2b34ca6f68f3a0'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
