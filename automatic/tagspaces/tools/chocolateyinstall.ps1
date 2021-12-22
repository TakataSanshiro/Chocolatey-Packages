$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v4.1.2/tagspaces-win-x64-4.1.2.zip'
  checksum       = 'ee66a390be15463b2b4f869e1dc6fb1196473b00835c6b8c6e0efe39fd0286c3'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
