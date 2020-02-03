$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.90.15/polar-bookshelf-1.90.15-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.90.15/polar-bookshelf-1.90.15-nsis-x64.exe'
  checksum         = 'b04c12d1de9fccebac143603f6cf7da7e58ed7635029947de1366fe40c4edc49'
  checksum64       = 'ca5e9523bd5c19432dd999638bddf1bf959517366c584cd9cc34394bad05f0e7'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
