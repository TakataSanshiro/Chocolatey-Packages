$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v4.1.3/tagspaces-win-x64-4.1.3.zip'
  checksum       = '597a43a27f7dc997f5305f6df8748b5dc87f1a9433e16ae5ee262dcb5b528b0b'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
