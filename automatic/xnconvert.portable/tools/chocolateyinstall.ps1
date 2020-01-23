$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'xnconvert.portable'
  url            = 'https://download.xnview.com/XnConvert-win.zip'
  url64          = 'https://download.xnview.com/XnConvert-win-x64.zip'
  checksum       = 'f56bcaef57308f67ce907f8d7d080f9a7fc9e09b6b593e9ef960a23c52c44136'
  checksum64     = '4e263e46e9fcec42a621b068c8c9f6b80fe4daa6b02dd3f55720bc7e16e7de02'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'xnconvert.portable'
}
Install-ChocolateyZipPackage @packageArgs
