$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.13.12/polar-bookshelf-1.13.12-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.13.12/polar-bookshelf-1.13.12-x64.exe'
  checksum         = 'A6D97B2E67A511DC8E7A2A1B98C42A4D90A248FC6661A19047BFFFE5967ADA69'
  checksum64       = 'D1061F4633F4436B05E367F0DD02F685863EBA621BD752B9653F131CEDA4C9A8'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
