$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.0.6/tagspaces-win-x64-5.0.6.zip'
  checksum       = '5ecf5892a20e0742987cb6a4064964786823d12476c84b87a8ffea05497cf12f'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
