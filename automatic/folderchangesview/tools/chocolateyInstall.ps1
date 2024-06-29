$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/folderchangesview.zip'
  checksum       = 'b9ddce06e7634340d0ad68ccf318f284edc9c46fbdfd759eade95a7fb82dae63'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'FolderChangesView*'
}
Install-ChocolateyZipPackage @packageArgs
