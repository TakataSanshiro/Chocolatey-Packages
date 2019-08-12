$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'quickviewer'
  installerType  = 'exe'
  url            = 'https://github.com/kanryu/quickviewer/releases/download/v1.1.6/QuickViewer-portable-1.1.6-x86.zip'
  url64          = 'https://github.com/kanryu/quickviewer/releases/download/v1.1.6/QuickViewer-portable-1.1.6-x64.zip' 
  checksum       = 'a415cf4d27e22a544a2ae8b4a781dfc50bd37aa6d8b6e769997a4f938d3775e9'
  checksum64     = '2d8cd19f98e93c88f949041120f86f6973e20beb67322ca1554ba206af406234'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'QuickViewer'
}
Install-ChocolateyZipPackage @packageArgs
