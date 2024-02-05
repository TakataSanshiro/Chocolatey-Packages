$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/websitesniffer.zip'
  url64          = 'https://www.nirsoft.net/utils/websitesniffer-x64.zip'
  checksum       = 'f9c841fae243e1584ce9127ebafb7a7c8ce314336759e5ee149b21d18a267f5e'
  checksum64     = 'da76a2e30e3f1167c6effc51b76eae7b8795068479c379d00994d2554b6aae86'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'WebSiteSniffer'
}
Install-ChocolateyZipPackage @packageArgs
