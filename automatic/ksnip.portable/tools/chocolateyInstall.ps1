$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/ksnip/ksnip/releases/download/v1.10.1/ksnip-1.10.1-windows.zip'
  checksum       = 'baef1dfb98b0d50a49dc636672fd5f3e3c90d5908cc1c85028f04914738f0977'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
