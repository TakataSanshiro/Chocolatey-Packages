$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'quickviewer'
  url            = 'https://github.com/kanryu/quickviewer/releases/download/v1.1.8/QuickViewer-portable-1.1.8-x86.zip'
  url64          = 'https://github.com/kanryu/quickviewer/releases/download/v1.1.8/QuickViewer-portable-1.1.8-x64.zip' 
  checksum       = '6c0024f131585c07e2d20b45b150eb113dfd2874e6b1ad2917ad0a6cbbf97f3c'
  checksum64     = '9120d45470a5b3eadcd8c6dbeed391b642b5815563773a1bae724d44f24bfc3d'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'QuickViewer'
}
Install-ChocolateyZipPackage @packageArgs
