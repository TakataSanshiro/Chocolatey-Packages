$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'registrychangesview'
  url            = 'https://www.nirsoft.net/utils/registrychangesview.zip'
  url64          = 'https://www.nirsoft.net/utils/registrychangesview-x64.zip'
  checksum       = '9331b521f03980ad4c0008a5e6e35765045d1fa09bd1e382caee5ae6541d2929'
  checksum64     = '6ee9502e6f63f2a99773151a17bcecd7deca73bb5847d4bfe6b61d123e2bf832'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'RegistryChangesView*'
}
Install-ChocolateyZipPackage @packageArgs
