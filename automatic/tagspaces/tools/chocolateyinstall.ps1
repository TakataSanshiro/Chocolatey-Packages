$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v4.0.8/tagspaces-win-x64-4.0.8.zip'
  checksum       = 'ff41dc05ff008d65d77a8b5fe97f3edfc804fc3dd85f6899af4bf6e34534f771'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
