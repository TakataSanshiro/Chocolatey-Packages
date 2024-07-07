$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/opensavefilesview.zip'
  url64          = 'https://www.nirsoft.net/utils/opensavefilesview-x64.zip'
  checksum       = '7aa6322cd9538ff6471424396b9f9f866d8970985a960b876849a0d34452aacb'
  checksum64     = '8060ca16dddac85f204699cfa9656488943a16553200679e67cd3428d09f06bf'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'OpenSaveFilesView'
}
Install-ChocolateyZipPackage @packageArgs
