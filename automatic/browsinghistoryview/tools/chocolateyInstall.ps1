$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/browsinghistoryview.zip'
  url64          = 'https://www.nirsoft.net/utils/browsinghistoryview-x64.zip'
  checksum       = 'bc4b9f4b65cc87806eeee8f6687450f7a15dca37ab362a6f1c72628e738f2591'
  checksum64     = 'd83de112857fb40271b4ca22acae66ec31f370d8571aecaec49d3cc59c977e0a'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'BrowsingHistoryView'
}
Install-ChocolateyZipPackage @packageArgs
