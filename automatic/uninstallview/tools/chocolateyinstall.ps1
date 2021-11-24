$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'uninstallview'
  url            = 'https://www.nirsoft.net/utils/uninstallview.zip'
  url64          = 'https://www.nirsoft.net/utils/uninstallview-x64.zip'
  checksum       = '7f0a30058c6a726c2f799c2ba2e731abda47c9af74e9b6d0fed08ea2fcfe844d'
  checksum64     = 'da3030a2fdb92c7a6ef7ea4448cc69d6b891ed059a550cde47f8ce7fb737d136'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'Uninstallview'
}
Install-ChocolateyZipPackage @packageArgs
