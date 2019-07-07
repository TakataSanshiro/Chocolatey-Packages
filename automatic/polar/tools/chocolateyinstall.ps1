$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.20.0/polar-bookshelf-1.20.0-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.20.0/polar-bookshelf-1.20.0-nsis-x64.exe'
  checksum         = '32a2cd5db12b1e12996ca97de944f0f1a031534dd69956f033e20960a70d34b1'
  checksum64       = '0c3db69136de44b96623c597ae3f618469a359d2fec62cc01eab50b0707f0d93'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
