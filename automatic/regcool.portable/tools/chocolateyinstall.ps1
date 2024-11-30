$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'regcool.portable'
  url            = 'https://kurtzimmermann.com/files/RegCoolX32.zip'
  url64          = 'https://kurtzimmermann.com/files/RegCoolX64.zip' 
  checksum       = '4BA753FED58D636A8BBE4781143AD75D9F012A26DAA6C5FE17ED6FF6022ACF11'
  checksum64     = '56C4BC33767A256BF06847E2B8C42AFF53A53328BACF60DD08C7D9F55F4F6B13'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'RegCool.portable'
}
Install-ChocolateyZipPackage @packageArgs
