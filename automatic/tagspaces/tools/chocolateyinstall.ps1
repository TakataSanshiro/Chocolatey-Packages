$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v4.5.2/tagspaces-win-x64-4.5.2.zip'
  checksum       = '5d4763bb9249d236baf9dc22c0c719bd24aee57aadc5cd610cad2f2d0f47733a'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
