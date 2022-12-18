$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.1.3/tagspaces-win-x64-5.1.3.zip'
  checksum       = '40a98d4245e96ad2b6984d67867b0c9cfe3ef27cad9b69ee40fc99e1ceb5a07b'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
