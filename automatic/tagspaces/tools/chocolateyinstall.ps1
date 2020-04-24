$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v3.5.2/tagspaces-win-x64-3.5.2.zip'
  checksum       = 'a5eb9b9ee263c18614e4e6760a59501501f3e28e80f8cf1704530e87fd2cf0e4'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
