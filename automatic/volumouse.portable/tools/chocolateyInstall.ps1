$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/volumouse.zip'
  url64          = 'https://www.nirsoft.net/utils/volumouse-x64.zip'
  checksum       = '026098453cb8f14898b3ddc0c7bb9e7855a05be930ad7f2261016829d8f0db89'
  checksum64     = 'a1589b344273e387515c311d48c1f432f9b12818be98cd8f50f8d11b7ed79767'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'volumouse.portable'
}
Install-ChocolateyZipPackage @packageArgs
