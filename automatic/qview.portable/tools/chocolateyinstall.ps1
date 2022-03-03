$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/jurplel/qView/releases/download/5.0/qView-5.0-win32.zip'
  url64          = 'https://github.com/jurplel/qView/releases/download/5.0/qView-5.0-win64.zip'
  checksum       = 'ae01ed2c7c9df553f737f148f3acda24ad01362595bfc9964474b382205f4e79'
  checksum64     = 'd924fef14005c8d65b1523f0c146d129ab9328c7c235322de299c1f68d16b33b'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
