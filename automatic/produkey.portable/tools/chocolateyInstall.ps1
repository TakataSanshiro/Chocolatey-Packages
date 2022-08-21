$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/produkey.zip'
  url64          = 'https://www.nirsoft.net/utils/produkey-x64.zip'
  checksum       = '1293aa22a718a8940fe6a0b0472a8806b1e00894d4d2a54485c1d9931f29cc8e'
  checksum64     = 'e4604e0ee680370448c6a832856dff4a0255ca763672825a7a67a2a4662b9909'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'produkey.portable'
}
Install-ChocolateyZipPackage @packageArgs
