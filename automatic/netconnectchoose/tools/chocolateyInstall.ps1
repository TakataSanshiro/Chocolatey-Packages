$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/netconnectchoose.zip'
  checksum       = 'a2c9735688b3d763508d5b5012309604ffd365d09f3f2a99e72bc4aff906b132'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'NetConnectChoose'
}
Install-ChocolateyZipPackage @packageArgs
