$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'registrychangesview'
  url            = 'https://www.nirsoft.net/utils/registrychangesview.zip'
  url64          = 'https://www.nirsoft.net/utils/registrychangesview-x64.zip'
  checksum       = 'dd3fe77d6a1ef3adb6793bf3a808886c4e4ca49ac55b02b0b6dc26bfe48228f6'
  checksum64     = '9375b4e64a0380bd1213ecabe21b51cbeb0f727ac8e9224c34d32fc679513c10'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'RegistryChangesView*'
}
Install-ChocolateyZipPackage @packageArgs
