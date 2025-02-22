$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/esedatabaseview.zip'
  checksum       = 'c03234789507b994b24883cb40723a10a2576857ee6ea45f4409d4d5ef539177'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'ESEDatabaseView'
}
Install-ChocolateyZipPackage @packageArgs
