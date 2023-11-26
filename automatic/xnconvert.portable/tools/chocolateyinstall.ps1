$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xnconvert.portable'
  url            = 'https://download.xnview.com/XnConvert-win.zip'
  url64          = 'https://download.xnview.com/XnConvert-win-x64.zip'
  checksum       = 'a6f23685f86eee1e835cc5b02b3656a82bb21dbf21f36ebb053d5584be56c6f2'
  checksum64     = '4590ded640e10c6f586e6200978b3aaa3485f20f67a5dda1a2a70f937f81e369'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'xnconvert.portable'
}
Install-ChocolateyZipPackage @packageArgs
