$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/ksnip/ksnip/releases/download/v1.10.0/ksnip-1.10.0-windows.zip'
  checksum       = 'd6ee4583ed3c6ed5964356d8129ad8963677be4946343c526030a30f2129b16a'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
