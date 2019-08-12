$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.31.0/polar-bookshelf-1.31.0-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.31.0/polar-bookshelf-1.31.0-nsis-x64.exe'
  checksum         = '93a4abeb4ab5f50467a11771a6596abce1e212cca67714e6a5242a668c96606d'
  checksum64       = 'ced04e0ae460be39d4bdce9db3cc26179ee20487e2ef5f12a4f0684a77109c60'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
