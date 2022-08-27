$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/filetypesman.zip'
  url64          = 'https://www.nirsoft.net/utils/filetypesman-x64.zip'
  checksum       = 'dfe33e557f2a11aa81e5f9e590447bccc4f505fd8f84307d73cc53ff7e403281'
  checksum64     = '5feec2a7c0ca1d46ff8bd27a0eadd068f3d8c6dc3fee6f7354973319aeecefb3'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'FileTypesMan'
}
Install-ChocolateyZipPackage @packageArgs
