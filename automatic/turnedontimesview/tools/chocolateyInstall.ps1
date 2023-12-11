$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/turnedontimesview.zip'
  checksum       = '1a1c1e6ed4583acb7b0a8960b34f37797fed81fe65dab1c33d1353e3923a9c4e'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'TurnedOnTimesView'
}
Install-ChocolateyZipPackage @packageArgs
