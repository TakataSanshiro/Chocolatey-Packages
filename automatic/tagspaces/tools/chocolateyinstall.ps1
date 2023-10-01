$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.5.1/tagspaces-win-x64-5.5.1.zip'
  checksum       = 'c097d769ee02335015d374cecece6dcfdee66111d5bea2e6d887be702800608a'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
