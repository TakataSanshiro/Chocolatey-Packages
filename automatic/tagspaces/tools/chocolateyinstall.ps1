$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.7.8/tagspaces-win-x64-5.7.8.zip'
  checksum       = 'cfdc113d7fe03b01eb4dc1653d56ba51fed8a9e2e94c33a03ab0195f0cbb2637'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
