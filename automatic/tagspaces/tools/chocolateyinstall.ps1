$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v3.9.5/tagspaces-win-x64-3.9.5.zip'
  checksum       = 'c10a343a772de28e54ad2b98bca857dff1883a3b92ee3192d76b9df5d43b910b'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
