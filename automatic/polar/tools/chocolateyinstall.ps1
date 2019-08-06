$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.30.8/polar-bookshelf-1.30.8-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.30.8/polar-bookshelf-1.30.8-nsis-x64.exe'
  checksum         = 'c6c4d067d4bf1d03e25cbe5fb871731268f924b29c6fa6d64d832c207e120812'
  checksum64       = 'b8c74ebe7854cede88fce808bf5b1d1f8f7432de3abdb168dc4778f0526bbebd'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
