$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/filetypesman.zip'
  url64          = 'https://www.nirsoft.net/utils/filetypesman-x64.zip'
  checksum       = '57d9381da51af01061f66731e4c817fb7c95769f5d003b90d3dfeb37155b3dfc'
  checksum64     = '29518c3c8d4999a9dbc31a4e7e0da1f85c9e9ebb83173079e83ab4fb8111b4b9'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'FileTypesMan'
}
Install-ChocolateyZipPackage @packageArgs
