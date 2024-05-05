$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/networkinterfacesview.zip'
  url64          = 'https://www.nirsoft.net/utils/networkinterfacesview-x64.zip'
  checksum       = '71c7a26ca3cbe6f92174a326bc58304d08646b59061c30da7cdbfb56cedb7db0'
  checksum64     = 'c16e8d300d5c7e90595631fe0745e6453e72ac901161b131675e77f754634012'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'NetworkInterfacesView'
}
Install-ChocolateyZipPackage @packageArgs
