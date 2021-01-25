$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v2.0.108/polar-desktop-app-2.0.108-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v2.0.108/polar-desktop-app-2.0.108-nsis-x64.exe'
  checksum         = '76c2d0341dd7b2b30929bc34cf4da15160c3c2a8285836a6caf2254094b1fae1'
  checksum64       = '270a9eeed74fed9e84b7aad0b78e340bf0bed8ae6df8f0d33ffefd3972223708'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
