$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'regcool.portable'
  url            = 'https://kurtzimmermann.com/files/RegCoolX32.zip'
  url64          = 'https://kurtzimmermann.com/files/RegCoolX64.zip' 
  checksum       = '248E6B74E6DF2A651886EC9FBF27C5B78963A0373DD08A5F45690F16AFD04023'
  checksum64     = '8CC22D74A3BDB571061C2895E3AF6F3106840A8B1E9BFA1F6C9D5B6A79F5C81F'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'RegCool.portable'
}
Install-ChocolateyZipPackage @packageArgs
