$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/firmwaretablesview.zip'
  url64          = 'https://www.nirsoft.net/utils/firmwaretablesview-x64.zip'
  checksum       = '8e97e6854fa997f08e10607a066aa36278e539969c5d44eb5f44144af23df790'
  checksum64     = 'dc5db8daf90d6b678566557dccaa3e0c7b863f659cb65ab84f78560ea148f47f'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'FirmwareTablesView'
}
Install-ChocolateyZipPackage @packageArgs
