$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.32.48/polar-bookshelf-1.32.48-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.32.48/polar-bookshelf-1.32.48-nsis-x64.exe'
  checksum         = '9b0b9aa4e5cbf1903934ee62dbbfbab65a01559cc6e5d8936530140b77c626a7'
  checksum64       = 'f2c02e9c69005ddad365ac70944a202770421081c0cfa3f0933945d25d4754a4'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
