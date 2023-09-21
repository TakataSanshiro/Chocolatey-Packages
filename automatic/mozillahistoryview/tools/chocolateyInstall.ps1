$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/mozillahistoryview.zip'
  url64          = 'https://www.nirsoft.net/utils/mozillahistoryview-x64.zip'
  checksum       = 'b96f2d44be8dba5329b5fd22186228d0f72d4fb6c79e079d98518fb93e92a2d0'
  checksum64     = '072e31cdfda76fa68d16d408343aa8ba5eb48a41785cd3393d9066a20c7a24ec'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'MozillaHistoryView'
}
Install-ChocolateyZipPackage @packageArgs
