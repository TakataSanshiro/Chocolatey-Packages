$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/passwordscan.zip'
  url64          = 'https://www.nirsoft.net/utils/passwordscan-x64.zip'
  checksum       = '499d6811ccb31092cc3bebe7ca3eb398a1e7482604c3be115a569f090b0c9b78'
  checksum64     = '9de8a6e79aa086ef6e92eb317180d27803922ff2952cd6b38a9154ddc9c6610a'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'Password Security Scanner'
}
Install-ChocolateyZipPackage @packageArgs
