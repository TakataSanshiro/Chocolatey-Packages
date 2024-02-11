$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/browseraddonsview.zip'
  url64          = 'https://www.nirsoft.net/utils/browseraddonsview-x64.zip'
  checksum       = '380c0ba5435dcbeeee8427756c72b2f58e13d34999c5e18bcb2f6edd5dfb1019'
  checksum64     = '1bf9555ec719b5a630fad319c1d6091d997791bbbf12a49849625e69bd2bb4dd'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'BrowserAddonsView'
}
Install-ChocolateyZipPackage @packageArgs
