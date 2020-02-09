$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName      = 'polar'
  installerType    = 'exe'
  url              = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.90.18/polar-bookshelf-1.90.18-nsis-ia32.exe'
  url64            = 'https://github.com/burtonator/polar-bookshelf/releases/download/v1.90.18/polar-bookshelf-1.90.18-nsis-x64.exe'
  checksum         = 'cff992a65a86a3e29bd585c8c0cf2aa16d29881c41581b8d9e1cf834e2e31be8'
  checksum64       = '52ddfa21e4980ff863e4506287ad29c9b1d355f34e9097b6485d29eba7ab5321'
  checksumType     = 'sha256'
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
  softwareName     = 'polar*'
}
Install-ChocolateyPackage @packageArgs
