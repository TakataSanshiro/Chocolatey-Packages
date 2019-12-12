$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.70.4/polar-bookshelf-1.70.4-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.70.4/polar-bookshelf-1.70.4-nsis-x64.exe'
  checksum         = '61de31cfae4437ba1bfdaf76190b613cac53e3640fd5f9035751ac6a89731844'
  checksum64       = '11802963a0e98696b6dc96d130c7ddf8e60c0576d6e63e7fdeeb321e1503aca1'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
