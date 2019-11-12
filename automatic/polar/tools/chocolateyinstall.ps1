$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.50.10/polar-bookshelf-1.50.10-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.50.10/polar-bookshelf-1.50.10-nsis-x64.exe'
  checksum         = '196a9600d6010d8b221c8ae2622a82636ea4ed429cd4db02e88a1b30ecc469ab'
  checksum64       = 'ab8f1e3c7f303df79c1f1939f5727733bf665b6ff41100471657dcb2932bc3a0'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
