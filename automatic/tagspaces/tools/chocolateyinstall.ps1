$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.6.1/tagspaces-win-x64-5.6.1.zip'
  checksum       = '3b4eeab7cc486f62cec5d64287197ea5731da4129850b7ff7212dcbf6634a450'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
