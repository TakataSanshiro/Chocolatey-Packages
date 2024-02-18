$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/filetypesman.zip'
  url64          = 'https://www.nirsoft.net/utils/filetypesman-x64.zip'
  checksum       = 'e906151bb3648dd52e67694dc419f4ed8cd0ef1b0c45f93fbefd8d343ebecf4b'
  checksum64     = '05f9d35dd1f44be6162def173d4e8bc4e55389d618b5349599bfa5a5bb1a7ea4'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'FileTypesMan'
}
Install-ChocolateyZipPackage @packageArgs
