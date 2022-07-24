$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/folderchangesview.zip'
  checksum       = '6f73e8670634223dfd6f4655c72a31a08e5d0af8f348decc8eabbfa2249c9d5c'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'FolderChangesView*'
}
Install-ChocolateyZipPackage @packageArgs
