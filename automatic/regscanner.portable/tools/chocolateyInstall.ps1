$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/regscanner.zip'
  url64          = 'https://www.nirsoft.net/utils/regscanner-x64.zip'
  checksum       = 'fe93d9534c634523c499c55590bf6bb4466624b975f3052606de38969e357b2d'
  checksum64     = 'c3ab15e7a60d86ffb125d3099191eab3e635b48bc6746e62fbfb0debbbb55d54'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'regscanner.portable'
}
Install-ChocolateyZipPackage @packageArgs
