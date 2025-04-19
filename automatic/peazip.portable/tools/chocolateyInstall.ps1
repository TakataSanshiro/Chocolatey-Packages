$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/peazip/PeaZip/releases/download/10.4.0/peazip_portable-10.4.0.WINDOWS.zip'
  url64          = 'https://github.com/peazip/PeaZip/releases/download/10.4.0/peazip_portable-10.4.0.WIN64.zip'
  checksum       = 'a4181feb651ddcdfe7113da686c9b9eae50e64f5d973441dd56f1439a0c4a048'
  checksum64     = 'c65a03885150c77f3f4d52e15ab08c78c0e13bb926c4bf825ec2b10411e231f3'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'peazip.portable'
}
Install-ChocolateyZipPackage @packageArgs
