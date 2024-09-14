$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/dnslookupview.zip'
  checksum       = '5b92cfd156353074558be601b0101e13a28bc7a6094044b87a7c84e3835e7336'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'DNSLookupView'
}
Install-ChocolateyZipPackage @packageArgs
