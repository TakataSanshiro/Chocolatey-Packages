$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/dnsquerysniffer.zip'
  url64          = 'https://www.nirsoft.net/utils/dnsquerysniffer-x64.zip'
  checksum       = 'e498887cb52527200b4d7cda3827940284edd09a9e33e3d549f241f972e754ea'
  checksum64     = 'bc5206760c839ad804a1211b70ebbd115c773c808036b211357a518409340963'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'dnsquerysniffer.portable'
}
Install-ChocolateyZipPackage @packageArgs
