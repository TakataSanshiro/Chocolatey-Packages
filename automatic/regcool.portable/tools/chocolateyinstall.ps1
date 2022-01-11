$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'regcool.portable'
  url            = 'https://kurtzimmermann.com/files/RegCoolX32.zip'
  url64          = 'https://kurtzimmermann.com/files/RegCoolX64.zip' 
  checksum       = '38c26fbd9b0f8fd95652b9726c59fd6973fd0eb6e9b790486a46b031187f1fbb'
  checksum64     = 'fa9515e6a490921dcb60e613dca2d95696a07ffeae85eb69b5216bdcf17c4b6a'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'RegCool.portable'
}
Install-ChocolateyZipPackage @packageArgs
