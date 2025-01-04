$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/peazip/PeaZip/releases/download/10.2.0/peazip_portable-10.2.0.WINDOWS.zip'
  url64          = 'https://github.com/peazip/PeaZip/releases/download/10.2.0/peazip_portable-10.2.0.WIN64.zip'
  checksum       = 'cf4ea5bc4c7d2044c8db081a8e7944fdaf7b8c4227fdb0cdd68a19a371fbb9d3'
  checksum64     = '37a22a59d5894ea4f2227e7888c143d69ddded4e6eeff708de78dafb4478fd0d'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'peazip.portable'
}
Install-ChocolateyZipPackage @packageArgs
