$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'registrychangesview'
  url            = 'https://www.nirsoft.net/utils/registrychangesview.zip'
  url64          = 'https://www.nirsoft.net/utils/registrychangesview-x64.zip'
  checksum       = '8b841e01afb2ddb45428d5565d98b6f1ddc13ee28d23babdb81a2858d4d95be5'
  checksum64     = '256c943690d4b20e61ced3915b0635e7b531ce61ee468de0e6418ec4df124e7e'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'RegistryChangesView*'
}
Install-ChocolateyZipPackage @packageArgs
