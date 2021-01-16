$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v2.0.103/polar-desktop-app-2.0.103-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v2.0.103/polar-desktop-app-2.0.103-nsis-x64.exe'
  checksum         = '3ba1546d756552087ede9fddc308cb0e2bfbdb56437b29a6092ec3172b75fa2b'
  checksum64       = '76f251e231ea6f72917a50f5476435dabb46066a9d8fd369ca8b6eb2bace8b2e'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
