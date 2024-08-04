$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/deviceioview.zip'
  url64          = 'https://www.nirsoft.net/utils/deviceioview-x64.zip'
  checksum       = '6e838ff2bd864e4f004f8051f36a6d275dbb847c624fa9b7328d7f3e5b6e6848'
  checksum64     = '810308a117d949f923e77a80206489208bf3b5e381f1406934ee5ce9d9537e33'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'DeviceIOView'
}
Install-ChocolateyZipPackage @packageArgs
