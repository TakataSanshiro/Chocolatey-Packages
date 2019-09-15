$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.32.14/polar-bookshelf-1.32.14-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.32.14/polar-bookshelf-1.32.14-nsis-x64.exe'
  checksum         = '7c8c34d9f1775b7bce47f8d739399cffca163416ac92815c70d98c8ab1166697'
  checksum64       = '06918eca2ccc48ab9aff401e9110712c13d3d10765783d6463cce5632a3ee157'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
