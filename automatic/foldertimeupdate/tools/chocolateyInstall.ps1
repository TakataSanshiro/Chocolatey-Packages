$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/foldertimeupdate.zip'
  url64          = 'https://www.nirsoft.net/utils/foldertimeupdate-x64.zip'
  checksum       = '788ee2865d22c45f65c0d12f23441d0c5469e84d90b7aebf0c860818702c96d3'
  checksum64     = 'b49e8bc044893f978e9a8e60714e29f32fa6ba3f929c4aaa58b74b536e160e3e'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'FolderTimeUpdate'
}
Install-ChocolateyZipPackage @packageArgs
