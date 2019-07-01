$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'coyim'
  url            = 'https://github.com/coyim/coyim/releases/download/v0.3.11/coyim-windows-0.3.11.zip'
  checksum       = '3c4b7c514bf2d6a9ff7e734739c4074008a79496e5947648a4daa873726ab853'
  checksumType   = 'sha256'
  softwareName   = 'CoyIM'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
