$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.30.6/polar-bookshelf-1.30.6-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.30.6/polar-bookshelf-1.30.6-nsis-x64.exe'
  checksum         = 'f62cd7f441ef8f94eeb459562b1093172c48d962959e5b0f1a5adc80d5905ada'
  checksum64       = '2eaaff02ed3674a2e446b01fb55063c6a419afd027c664a70e8a6a557412b1e1'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
