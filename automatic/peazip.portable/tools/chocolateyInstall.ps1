$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/peazip/PeaZip/releases/download/9.7.1/peazip_portable-9.7.1.WINDOWS.zip'
  url64          = 'https://github.com/peazip/PeaZip/releases/download/9.7.1/peazip_portable-9.7.1.WIN64.zip'
  checksum       = 'e3b11b9583eea7fa4fcd590371e0c4dc4263d6e4374c555dfb929a3bfabc9d2b'
  checksum64     = '1baaae2c19f8c64a22ccb32603a82b56bcec5fc6c7327a8e6378e2635d3f5329'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'peazip.portable'
}
Install-ChocolateyZipPackage @packageArgs
