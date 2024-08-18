$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/peazip/PeaZip/releases/download/9.9.1/peazip_portable-9.9.1.WINDOWS.zip'
  url64          = 'https://github.com/peazip/PeaZip/releases/download/9.9.1/peazip_portable-9.9.1.WIN64.zip'
  checksum       = '71ae04f7f93169d36024b011b97f2f167f64f80af4a6958166f1509f32e2391a'
  checksum64     = 'f5558342fd92c0203f6d82e34c331dd5a896d4aad81b08e6385731505cdaeb5f'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'peazip.portable'
}
Install-ChocolateyZipPackage @packageArgs
