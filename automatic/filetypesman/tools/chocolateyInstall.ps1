$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/filetypesman.zip'
  url64          = 'https://www.nirsoft.net/utils/filetypesman-x64.zip'
  checksum       = 'd685f7b64ffdc6a487f8f0b204b556b11c5cfe0f3e3a93404c07dc52da5f72ac'
  checksum64     = '4ecf354e78796ad36c96a02b9b3ab4df0e71872a99cf5b7428de6ac2ae29a31d'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'FileTypesMan'
}
Install-ChocolateyZipPackage @packageArgs
