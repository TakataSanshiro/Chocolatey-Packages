$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.32.0/polar-bookshelf-1.32.0-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.32.0/polar-bookshelf-1.32.0-nsis-x64.exe'
  checksum         = '1c9b0112c9d3ff950ce5e32b2c65e899a9129ee7a4539ae9488f8523c780db09'
  checksum64       = 'c0cdbb9975ae045c13478ab9aa724d6980dead3a2baddca0b2b2014b49074edb'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
