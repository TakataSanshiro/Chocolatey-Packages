$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.80.3/polar-bookshelf-1.80.3-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.80.3/polar-bookshelf-1.80.3-nsis-x64.exe'
  checksum         = '1e6b0177843d5e88b8a99bbda55ec950a78401bfca96b67c189a19f3e71e6dde'
  checksum64       = '6f472a16d85d6e97e63601af38f15de03330a4b169a3a13c699277f49c1ccba9'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
