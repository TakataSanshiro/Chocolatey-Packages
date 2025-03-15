$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xnconvert.portable'
  url            = 'https://download.xnview.com/XnConvert-win.zip'
  url64          = 'https://download.xnview.com/XnConvert-win-x64.zip'
  checksum       = 'a6f23685f86eee1e835cc5b02b3656a82bb21dbf21f36ebb053d5584be56c6f2'
  checksum64     = 'd2cdd34187a30dc66f34cc8c4f7808ebbabf5eab7d4e4f917ee70b5dd8ef89e0'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'xnconvert.portable'
}
Install-ChocolateyZipPackage @packageArgs
