$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/ofview.zip'
  url64          = 'https://www.nirsoft.net/utils/ofview-x64.zip'
  checksum       = 'b6725c9c17610d386c071b4b51e1ce28dfd435b72f6e38cbe1c868874be60662'
  checksum64     = '8d7f840ee5182ac8ab2011b93a8d961bbbcb67b6ed74e217e68547eb17411a7b'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'OpenedFilesView'
}
Install-ChocolateyZipPackage @packageArgs
