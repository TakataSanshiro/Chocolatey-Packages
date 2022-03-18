$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v4.3.1/tagspaces-win-x64-4.3.1.zip'
  checksum       = '2126cf06cc0922c2a6b3e3e1e2a7d0330163dc3834b8a8072e283a0e182a36b3'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
