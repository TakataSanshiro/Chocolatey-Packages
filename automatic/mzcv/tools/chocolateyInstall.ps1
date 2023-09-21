$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/mzcv.zip'
  url64          = 'https://www.nirsoft.net/utils/mzcv-x64.zip'
  checksum       = 'e84d6cb63b8dcca75ad0492bd30741e7fd42e825b3e4c96eef163be7e210b3a9'
  checksum64     = 'cace36a7ea185c8a675356f6e3eeb5b1d466666f7853aa9813df486c5178cbdf'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'MozillaCookiesView'
}
Install-ChocolateyZipPackage @packageArgs
