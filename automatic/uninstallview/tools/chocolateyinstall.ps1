$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'uninstallview'
  url            = 'https://www.nirsoft.net/utils/uninstallview.zip'
  url64          = 'https://www.nirsoft.net/utils/uninstallview-x64.zip'
  checksum       = '8e9bd2f7e6c72190ea2cc84c716a38b3248de0826f56b0d99f5f09d4fdd2c2ec'
  checksum64     = 'd9683cba1f6bcf893fed0bec15cab1ecc8cd5b311d87f4bde8f55eef8217fbe2'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'Uninstallview'
}
Install-ChocolateyZipPackage @packageArgs
