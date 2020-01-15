$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.90.0/polar-bookshelf-1.90.0-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.90.0/polar-bookshelf-1.90.0-nsis-x64.exe'
  checksum         = 'a1843e8ffda5100dd7c276539f372dbce4d1d48435175667bc7b8065635bf950'
  checksum64       = 'a7ad11454400cd390e890b3f72ba6361fb20a0f58cf50fb4057aac8ef1dd9fdc'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
