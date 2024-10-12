$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/dnslookupview.zip'
  checksum       = '6486adca519a94bfae190a9a159f20752f5e5fd5204d1acf2d3bda787b31b901'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'DNSLookupView'
}
Install-ChocolateyZipPackage @packageArgs
