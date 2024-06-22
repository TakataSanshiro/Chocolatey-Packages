$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tagspaces'
  url            = 'https://github.com/tagspaces/tagspaces/releases/download/v5.8.6/tagspaces-win-x64-5.8.6.zip'
  checksum       = 'd9576e0d67efc5ba8fa8d87aece2912a2742a678e6bdcdd1e1e85f524584bf1c'
  checksumType   = 'sha256'
  softwareName   = 'Tagspaces'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
