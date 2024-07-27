$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/insideclipboard.zip'
  checksum       = '54f7c48f9c270bbddfa4e8b5c055d862d481622480f1c9395965d5e0468006df'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'InsideClipboard'
}
Install-ChocolateyZipPackage @packageArgs
