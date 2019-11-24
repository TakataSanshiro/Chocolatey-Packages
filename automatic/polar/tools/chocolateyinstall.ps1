$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.60.11/polar-bookshelf-1.60.11-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.60.11/polar-bookshelf-1.60.11-nsis-x64.exe'
  checksum         = '13f0df0e737cdad81ffbec73d05e4c5220a7142aba08a83de2cce9a0e82b55bf'
  checksum64       = '2a4caa0dbdc82dff0240417f9df99f12806b57202dd2df1fd683208abee12d18'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
