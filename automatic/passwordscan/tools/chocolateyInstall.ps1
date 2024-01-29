$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/passwordscan.zip'
  url64          = 'https://www.nirsoft.net/utils/passwordscan-x64.zip'
  checksum       = 'a8844c647c53266cc263662d45003b2c22c15a78f3bca11f0a6c324eeb19b7c4'
  checksum64     = 'a87651cf3ffd7550018294c1b6a5c987f7f8bf29e205b82b31a76f518050b3fd'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'Password Security Scanner'
}
Install-ChocolateyZipPackage @packageArgs
