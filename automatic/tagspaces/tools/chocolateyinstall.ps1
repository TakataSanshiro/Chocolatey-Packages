$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v3.9.8/tagspaces-win-x64-3.9.8.zip'
  checksum       = 'cea149d499a6496932d170eaa69d7a8596eb15368361c88c0fde03f1377ce397'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
