$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'appaudioconfig'
  url            = 'https://www.nirsoft.net/utils/appaudioconfig.zip'
  url64          = 'https://www.nirsoft.net/utils/appaudioconfig-x64.zip'
  checksum       = 'fce712fc3c4b5ae614330030b0c0501fb61d85e284477e2c9bae7cd48264b2f4'
  checksum64     = '8d0408cdcfc324b8c3bb5443d7690f083b16e2f478b75bac2e73a508dbad7c14'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'AppAudioConfig*'
}
Install-ChocolateyZipPackage @packageArgs
