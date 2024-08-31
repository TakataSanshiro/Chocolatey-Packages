$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/folderchangesview.zip'
  checksum       = '1d15dbed619efa0ea1faaf523717dd79c076abf62055e5d4d08474c89dc9d305'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'FolderChangesView*'
}
Install-ChocolateyZipPackage @packageArgs
