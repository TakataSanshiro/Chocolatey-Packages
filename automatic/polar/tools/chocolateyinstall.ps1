$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.100.13/polar-bookshelf-1.100.13-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.100.13/polar-bookshelf-1.100.13-nsis-x64.exe'
  checksum         = '12ff83cc41158d4a29afe245890fccee87f74f65ac785acda5b243b77a01601e'
  checksum64       = '3937211dfa726af187ced099ba3280a5e34a70d18aaecafea081090cf6bd955d'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
