$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.19.8/polar-bookshelf-1.19.8-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.19.8/polar-bookshelf-1.19.8-nsis-x64.exe'
  checksum         = '3da9900787b6845610b5e6ade8bf2970b71ee5600775c32c8ec78bed60383985'
  checksum64       = 'c3c2ac322c5619f6730b79c140a0cd6a4e2f7b40727e7c4a2021062012bc5cca'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
