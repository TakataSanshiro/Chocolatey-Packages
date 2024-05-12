$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/shadowcopyview.zip'
  url64          = 'https://www.nirsoft.net/utils/shadowcopyview-x64.zip'
  checksum       = '177ad1b42c4392b38225427b3015054bd61a1d7f2e651943b03f653f02c32c74'
  checksum64     = '55c72769e4e13b9a712cf8a7a7ea74eb25014af2ef6598513bc1429ea0746f3d'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'ShadowCopyView'
}
Install-ChocolateyZipPackage @packageArgs
