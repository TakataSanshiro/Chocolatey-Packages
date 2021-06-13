$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'registrychangesview'
  url            = 'https://www.nirsoft.net/utils/registrychangesview.zip'
  url64          = 'https://www.nirsoft.net/utils/registrychangesview-x64.zip'
  checksum       = '8d03c23dc133cabbc9ef1708e75a4976e1e96579d3fdee56ca5da1ca8bdfae7c'
  checksum64     = 'fab0aaa2ec36459e3a55323be31d15ea3e896f500ce22a4397bd810fa6c2e562'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'RegistryChangesView*'
}
Install-ChocolateyZipPackage @packageArgs
