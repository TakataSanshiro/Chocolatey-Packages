$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v4.0.4/tagspaces-win-x64-4.0.4.zip'
  checksum       = 'd9a6621eca6588a580c2eec1063f1d7e150ed5ef40c05d28854064f09b5f68b6'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
