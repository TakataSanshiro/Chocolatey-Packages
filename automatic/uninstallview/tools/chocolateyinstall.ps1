$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'uninstallview'
  url            = 'https://www.nirsoft.net/utils/uninstallview.zip'
  url64          = 'https://www.nirsoft.net/utils/uninstallview-x64.zip'
  checksum       = '15c60649d945c6673ba5f694b3dc0f6fbfa7c0bda138676c36dfc20859e8e94b'
  checksum64     = '1b54f45a319a0b7c6cf92b54f74f418fbf87eda3d92fecf87789e7410122ae21'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'Uninstallview'
}
Install-ChocolateyZipPackage @packageArgs
