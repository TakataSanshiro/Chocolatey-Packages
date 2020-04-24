$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xnconvert.portable'
  url            = 'https://download.xnview.com/XnConvert-win.zip'
  url64          = 'https://download.xnview.com/XnConvert-win-x64.zip'
  checksum       = '08be88636f907a81e5c60f61c08f86cb3c101a2c6be217bbbc5134cc1d9cb048'
  checksum64     = 'f2f4110776cb4697bec848a038454747bbd92155190acde52310f8a4df15ea14'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'xnconvert.portable'
}
Install-ChocolateyZipPackage @packageArgs
