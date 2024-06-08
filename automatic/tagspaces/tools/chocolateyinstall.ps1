$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.8.4/tagspaces-win-x64-5.8.4.zip'
  checksum       = 'a70ebff34463683a1f1001cafaf5680a4ea19dec87f58e80071c483006fb8ad4'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
