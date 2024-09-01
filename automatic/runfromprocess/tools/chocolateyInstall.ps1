$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/runfromprocess.zip'
  checksum       = '1dfe0d12e325480bd65f06a802abc8bb6b6877eba2d442171614c66e271fc0b5'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'RunFromProcess'
}
Install-ChocolateyZipPackage @packageArgs
