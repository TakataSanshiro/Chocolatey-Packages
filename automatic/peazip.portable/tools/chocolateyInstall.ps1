$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/peazip/PeaZip/releases/download/9.5.0/peazip_portable-9.5.0.WINDOWS.zip'
  url64          = 'https://github.com/peazip/PeaZip/releases/download/9.5.0/peazip_portable-9.5.0.WIN64.zip'
  checksum       = '39d054ca0e301adbe5f526924be12926d6003c0f247a157d014a417bb40e677f'
  checksum64     = 'a0cac53a6f140acdca314e898e758c029f41d37deea89b925b85a0a4cdfe7e6a'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'peazip.portable'
}
Install-ChocolateyZipPackage @packageArgs
