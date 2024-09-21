$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'regcool.portable'
  url            = 'https://kurtzimmermann.com/files/RegCoolX32.zip'
  url64          = 'https://kurtzimmermann.com/files/RegCoolX64.zip' 
  checksum       = 'BDCC87E72DB27C170837157588E71BC9C065141B9C51F628B5FA4CD50CB0B9D0'
  checksum64     = 'EB409379D43D50B774494D5EDCD66772210A44129388AF702C448446C8FC7754'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'RegCool.portable'
}
Install-ChocolateyZipPackage @packageArgs
