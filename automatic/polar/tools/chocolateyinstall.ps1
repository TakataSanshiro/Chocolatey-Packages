$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.32.32/polar-bookshelf-1.32.32-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.32.32/polar-bookshelf-1.32.32-nsis-x64.exe'
  checksum         = 'fa33d9ae8d1d244a8cb50441374dc5e514ae300ff8cccc2f9b5ee9449a124aa9'
  checksum64       = '5e4c9ae88c330c80089ea0cca659d0aad318a185f9a66e5efc9772ac90b952f5'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
