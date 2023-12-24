$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/bulkfilechanger.zip'
  url64          = 'https://www.nirsoft.net/utils/bulkfilechanger-x64.zip'
  checksum       = '769b897e045e5d5f69587a76da07a50aa6c1aa91f8eb07041d9a7b7652995c46'
  checksum64     = 'bf8aea034fee8fc533b6e18197659c9d43e93f07830357086b8ee93d9e11f198'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'BulkFileChanger'
}
Install-ChocolateyZipPackage @packageArgs
