$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/bulkfilechanger.zip'
  url64          = 'https://www.nirsoft.net/utils/bulkfilechanger-x64.zip'
  checksum       = 'e718873d7bfa7f2d658c209756e64d002c2714d17dd55c71977eede5975a1e2d'
  checksum64     = '8c329b4162046fad2622516230cb8fe52c5d66a6655fa48a849476fb71de5a6d'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'BulkFileChanger'
}
Install-ChocolateyZipPackage @packageArgs
