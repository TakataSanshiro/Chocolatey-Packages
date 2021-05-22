$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wickr'
  installerType  = 'msi'
  url            = 'https://s3.amazonaws.com/static.wickr.com/downloads/win/me/WickrMe-5.77.12.msi'
  checksum       = 'f8cd1df4583463bafb777b9f59cd2f1dffaaad61dd03ae087b664ed59a1bff99'
  checksumType   = 'sha256'
  silentArgs     = '/qb /l*v `"$($env:TEMP)\$($env:chocolateyPackageName).$($env:chocolateyPackageVersion).MsiInstall.log`"'
  validExitCodes = @(0)
  softwareName   = 'Wickr'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
