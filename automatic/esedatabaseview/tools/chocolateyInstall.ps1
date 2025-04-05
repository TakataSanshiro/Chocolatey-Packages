$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/esedatabaseview.zip'
  checksum       = 'c63d27137b89d43ca5ddc3fefa293550b4372623094ddf4ccd733a109a65f2a0'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'ESEDatabaseView'
}
Install-ChocolateyZipPackage @packageArgs
