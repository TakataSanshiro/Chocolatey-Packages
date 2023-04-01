$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/folderchangesview.zip'
  checksum       = '911e0b3af30eee893cb59ddab711fa0a021f891e67585bfc40da19c41bfcfa21'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'FolderChangesView*'
}
Install-ChocolateyZipPackage @packageArgs
