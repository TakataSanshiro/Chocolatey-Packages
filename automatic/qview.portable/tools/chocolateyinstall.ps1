$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/jurplel/qView/releases/download/6.1/qView-6.1-win32.zip'
  url64          = 'https://github.com/jurplel/qView/releases/download/6.1/qView-6.1-win64.zip'
  checksum       = '4157897ce58e104c852187a735d4c24d6cb6ef86d3af616881efa1fae1bfe24b'
  checksum64     = '1c82b9c89cd9b1c6a9ecc9a7a52507e1eb7512ad79002331f0ba7a3c7657aae0'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
