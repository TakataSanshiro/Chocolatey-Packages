$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/whoistd.zip'
  checksum       = 'c24d09c7bfb6ba9008ea38bc09b0e4f30b9c55b27708c54724cf7343b76c46cc'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'whoistd.portable'
}
Install-ChocolateyZipPackage @packageArgs
