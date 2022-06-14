$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'registrychangesview'
  url            = 'https://www.nirsoft.net/utils/registrychangesview.zip'
  url64          = 'https://www.nirsoft.net/utils/registrychangesview-x64.zip'
  checksum       = 'f7df8629f9eaf878e58f7a94cde681a32e986d2432afad49967da3b423063eab'
  checksum64     = '49aa32eef63ac95cce10343e8c66def346c7da4d13d665cd1c93e26c66829860'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'RegistryChangesView*'
}
Install-ChocolateyZipPackage @packageArgs
