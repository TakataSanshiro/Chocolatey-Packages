$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.100.1/polar-bookshelf-1.100.1-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.100.1/polar-bookshelf-1.100.1-nsis-x64.exe'
  checksum         = 'c3fee4bc06da573579ad4b97dcbcaa15aa546eaff3e236e7e8508b48ca1fc910'
  checksum64       = 'fc7cba75a06a2ccc24cad18fa459dc5ba78e7f49e0a40d7e182d77ab642956a9'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
