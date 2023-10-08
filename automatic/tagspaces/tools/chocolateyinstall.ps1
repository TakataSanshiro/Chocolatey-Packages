$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.5.2/tagspaces-win-x64-5.5.2.zip'
  checksum       = '3ab17453e9349d92bf7bb7768036f4fc36b4245a8f8d5fe499c0db6862b99ad0'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
