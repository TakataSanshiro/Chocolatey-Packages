$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'regcool.portable'
  url            = 'https://kurtzimmermann.com/files/RegCoolX32.zip'
  url64          = 'https://kurtzimmermann.com/files/RegCoolX64.zip' 
  checksum       = 'f383296638f9f5e1804dd9f8b7e37d6a4b621ac64dc4c36092a3620473a9d3d4'
  checksum64     = '670bc50beddf556a701bca6a31b5be53637dea2e26ef35b4f4711fac6a9e25f4'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'RegCool.portable'
}
Install-ChocolateyZipPackage @packageArgs
