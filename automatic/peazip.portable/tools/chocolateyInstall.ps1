$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/peazip/PeaZip/releases/download/10.3.0/peazip_portable-10.3.0.WINDOWS.zip'
  url64          = 'https://github.com/peazip/PeaZip/releases/download/10.3.0/peazip_portable-10.3.0.WIN64.zip'
  checksum       = '14512fe334ad9f73cb21db21f8c91a78ce54ecbe2ee8705c757a1905a3904625'
  checksum64     = 'da246b0a36367dad739f218ebb53e0f7cc05555770b4c75ea3d7f24134df183c'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'peazip.portable'
}
Install-ChocolateyZipPackage @packageArgs
