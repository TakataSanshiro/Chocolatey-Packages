$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'uninstallview'
  url            = 'https://www.nirsoft.net/utils/uninstallview.zip'
  url64          = 'https://www.nirsoft.net/utils/uninstallview-x64.zip'
  checksum       = 'c9b3fb770d483bee56d466337347b2974078917d7a744ceb165552e7cca9f022'
  checksum64     = 'c43c74275b313c1a863cb9dd0fa8b8ddf83c659520934f9f5a32c89d5bff8975'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'Uninstallview'
}
Install-ChocolateyZipPackage @packageArgs
