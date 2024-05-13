$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://github.com/snakefoot/snaketail-net/releases/download/1.9.8/SnakeTail_v1.9.8.zip'
  checksum       = 'df21042175aed40a3b36658e2dcef5c1332c0c217d082f1f08d5412eb95f0744'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
