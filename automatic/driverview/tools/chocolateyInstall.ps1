$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/driverview.zip'
  url64          = 'https://www.nirsoft.net/utils/driverview-x64.zip'
  checksum       = 'fe82b8ffe23692c3059a1416c265db82e378dad4937b11c5ba86eac9fac17f85'
  checksum64     = '8998e99e733bf112decf3a9c6954d86787d5a76f8347ffa50caf55cd7df9b4fe'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'DriverView'
}
Install-ChocolateyZipPackage @packageArgs
