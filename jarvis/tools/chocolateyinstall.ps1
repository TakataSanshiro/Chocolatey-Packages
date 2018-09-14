$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'jarvis'
  installerType  = 'exe'
  url            = 'https://github.com/spectresystems/jarvis/releases/download/v0.8.0/Jarvis-0.8.0-x64.exe'
  checksum       = '1EDA1110E864B519E90BE2938A4214E322887B196E667E295BEE8CD5B0A048E4'
  checksumType   = 'sha256'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'jarvis*'
}
Install-ChocolateyPackage @packageArgs
