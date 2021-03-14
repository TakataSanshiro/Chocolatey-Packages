$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'uninstallview'
  url            = 'https://www.nirsoft.net/utils/uninstallview.zip'
  url64          = 'https://www.nirsoft.net/utils/uninstallview-x64.zip'
  checksum       = '7d065915b2a612a8a09d9bea00f047644fb1e5d2a54df9e7ce093fa39eae27a2'
  checksum64     = 'da88bb17e4bcd2ab38541ec23a8098a54a09ea4555f24994e24d5cd0fb27d9a9'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'Uninstallview'
}
Install-ChocolateyZipPackage @packageArgs
