$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v6.2.0/tagspaces-win-x64-6.2.0.zip'
  checksum       = '985cc9c5ac7cbece664032b9c1eb5eac6d9a6c061b54c6a7f2df7af492dc4698'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
