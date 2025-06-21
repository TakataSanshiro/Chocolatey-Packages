$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/dnsquerysniffer.zip'
  url64          = 'https://www.nirsoft.net/utils/dnsquerysniffer-x64.zip'
  checksum       = 'e596ee2e6261b13735dbbfec3cdd2e5ea7b85252898f1535b5ed83427489d263'
  checksum64     = '60387e5506b2efde8c0cef0802a43481ec34c98357e72eeea1a662ea0de6c14e'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'dnsquerysniffer.portable'
}
Install-ChocolateyZipPackage @packageArgs
