$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.5.4/tagspaces-win-x64-5.5.4.zip'
  checksum       = 'ea22054ac585d3f5a90fa7837c5ad8a05eedd0e2b53db9ba1211de67bc17eaa1'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
