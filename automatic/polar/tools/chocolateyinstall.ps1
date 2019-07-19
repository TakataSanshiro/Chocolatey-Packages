$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.30.1/polar-bookshelf-1.30.1-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.30.1/polar-bookshelf-1.30.1-nsis-x64.exe'
  checksum         = 'BF8A2061ABCC6859D68CF817264CB3CFE35B005141DDE22325D3F26B9B5C1516'
  checksum64       = 'B16DCB178AC7A5237EE0E5220F5A0786BF02AA95D2E6929A3A320D7C130CE5EB'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
