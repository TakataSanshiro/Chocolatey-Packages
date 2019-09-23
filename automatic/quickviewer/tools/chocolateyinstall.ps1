$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'quickviewer'
  url            = 'https://github.com/kanryu/quickviewer/releases/download/v1.1.7/QuickViewer-portable-1.1.7-x86.zip'
  url64          = 'https://github.com/kanryu/quickviewer/releases/download/v1.1.7/QuickViewer-portable-1.1.7-x64.zip' 
  checksum       = 'f6b0ff66d86b0f5989b8a474314400797d6e65a995b5c28b12946cfc17295c33'
  checksum64     = 'd5ac98d21a53e46b220f06c2cb4edcb35f04fedbca7c51fd1cff682d110b4eb5'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'QuickViewer'
}
Install-ChocolateyZipPackage @packageArgs
