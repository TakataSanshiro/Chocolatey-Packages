$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v6.0.1/tagspaces-win-x64-6.0.1.zip'
  checksum       = '3ff9b41afc74e7cda630b86c3e5fce58bed8185147c2403799b1e12449ffb26a'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
