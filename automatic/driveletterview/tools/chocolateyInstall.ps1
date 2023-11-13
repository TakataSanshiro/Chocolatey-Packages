$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/driveletterview.zip'
  url64          = 'https://www.nirsoft.net/utils/driveletterview-x64.zip'
  checksum       = '4676d1b4fd821ba22ec36d0667682e2995aff3970e3006e8d6f046c7c4801354'
  checksum64     = '90024847ab711553046263bbe06acb99f31916a5c47e0e3858533c5310083d16'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'DriveLetterView'
}
Install-ChocolateyZipPackage @packageArgs
