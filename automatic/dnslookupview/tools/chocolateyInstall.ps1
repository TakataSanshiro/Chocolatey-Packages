$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/dnslookupview.zip'
  checksum       = '607d34498ede8f447265087920e5793e33fe2f31acfc6e454267f41699bea6a0'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'DNSLookupView'
}
Install-ChocolateyZipPackage @packageArgs
