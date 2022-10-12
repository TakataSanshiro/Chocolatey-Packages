$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.0.3/tagspaces-win-x64-5.0.3.zip'
  checksum       = 'c426754070b8a326e8f2f8fec1a8a8d5c765f8898e35f12ea098ec98e955bc85'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
