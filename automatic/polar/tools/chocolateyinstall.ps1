$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v2.0.53/polar-desktop-app-2.0.53-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v2.0.53/polar-desktop-app-2.0.53-nsis-x64.exe'
  checksum         = '5b1dd8640c0962fb2de09491b3ada5a803964905606c47ab4fc943a70c7ece99'
  checksum64       = 'e21b173951ff6aaa01a98e315169a84d8ea1fe0fdfa3ead6299a454133754a4e'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
