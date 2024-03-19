$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/dnslookupview.zip'
  checksum       = 'bd9c559b6d5ee28f6ca5183aba78d6a84e6ca8ddbc86f8f6f590edc4921c296d'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'DNSLookupView'
}
Install-ChocolateyZipPackage @packageArgs
