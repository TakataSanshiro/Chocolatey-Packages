$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.40.1/polar-bookshelf-1.40.1-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.40.1/polar-bookshelf-1.40.1-nsis-x64.exe'
  checksum         = '3380f81958d2dd34cb623d0c03f5a585eb4be331305dc91260f8d35daf6353d8'
  checksum64       = 'beb172dcf3b0335091cdd3d58899a3e89c5244008b0c33e82fc315ea8f6eaf71'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
