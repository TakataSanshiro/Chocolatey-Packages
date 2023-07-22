$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.4.4/tagspaces-win-x64-5.4.4.zip'
  checksum       = '598ac022c8a169bcefcb95cbd9086d3f9249c1c5dcee0ad9aa3f555d9ba15b8f'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
