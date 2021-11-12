$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wickr'
  installerType  = 'msi'
  url            = 'https://s3.amazonaws.com/static.wickr.com/downloads/win/me/WickrMe-5.90.6.msi'
  checksum       = '211503d7740398c3da863909d28e19d61125fcb95fa9332b66664c3818ae7689'
  checksumType   = 'sha256'
  silentArgs     = "/qb /l*v `"$($env:TEMP)\$($env:chocolateyPackageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0)
  softwareName   = 'Wickr'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
