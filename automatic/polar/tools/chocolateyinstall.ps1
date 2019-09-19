$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.32.29/polar-bookshelf-1.32.29-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.32.29/polar-bookshelf-1.32.29-nsis-x64.exe'
  checksum         = '2152be2e305b9eb17d4cdc403ac43b11cd54805ab4f7744681de7cf7721ab357'
  checksum64       = 'b63b21bf6c3eb11d6df6a011fa74e2f0af438ea5f358f66d724db3919cfe98b5'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
