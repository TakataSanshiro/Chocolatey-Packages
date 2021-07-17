$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xnconvert.portable'
  url            = 'https://download.xnview.com/XnConvert-win.zip'
  url64          = 'https://download.xnview.com/XnConvert-win-x64.zip'
  checksum       = 'ce750f9b3704222c563f378227692a2290de30268c7f1b8381892fbd6431e54d'
  checksum64     = '20dcd90586de398ca6d15b028ba4e6c6778fc0cc65c0b9008a693f59bb11e327'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'xnconvert.portable'
}
Install-ChocolateyZipPackage @packageArgs
