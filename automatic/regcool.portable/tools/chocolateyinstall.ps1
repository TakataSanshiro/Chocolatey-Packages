$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'regcool.portable'
  url            = 'https://kurtzimmermann.com/files/RegCoolX32.zip'
  url64          = 'https://kurtzimmermann.com/files/RegCoolX64.zip' 
  checksum       = '2729656d5691f1eb05f64578d9e262672d030f1088ec6e073d041e9eac6a0087'
  checksum64     = '18712aa9b9895ca58ef4bef63c489b6f744bfab0f9552bdcb9c1d2bdf1eb88c8'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'RegCool.portable'
}
Install-ChocolateyZipPackage @packageArgs
