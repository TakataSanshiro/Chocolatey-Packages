$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/networkconnectlog.zip'
  checksum       = '41b2fb4d1dd9abb1a63952a7e4c8fdf206dab15915b65d139bc558fc0784eb19'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'NetworkConnectLog'
}
Install-ChocolateyZipPackage @packageArgs
