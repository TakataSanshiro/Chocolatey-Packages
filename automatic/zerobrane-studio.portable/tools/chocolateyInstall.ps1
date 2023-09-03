$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'zerobrane-studio.portable'
  url            = 'https://download.zerobrane.com/ZeroBraneStudioEduPack-2.00-win32.zip'
  checksum       = '43b85b166d1c234be040728b5ef8ee70a67a1e78bae9f7ac0b46747802028881'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'zerobrane-studio.portable'
}
Install-ChocolateyZipPackage @packageArgs
