$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/dnsquerysniffer.zip'
  url64          = 'https://www.nirsoft.net/utils/dnsquerysniffer-x64.zip'
  checksum       = '717a4444166d474398c725d798fbd43b3796c6b71909fd01ca48137a8a6c29a1'
  checksum64     = '28ff24a8e1a0956f86712fee034368000123231e18552bf011aa3b9fe03052ca'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'dnsquerysniffer.portable'
}
Install-ChocolateyZipPackage @packageArgs
