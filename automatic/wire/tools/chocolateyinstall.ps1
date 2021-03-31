$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wire'
  installerType  = 'exe'
  url            = 'https://github.com/wireapp/wire-desktop/releases/download/windows%2F3.24.4036/WireSetup.3.24.4036.exe'
  checksum       = '3e133a9dbb6c66347c314269f433ab332e679d00ffe6cee96d2de5b18a6a3dd7'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  softwareName   = 'Wire'
}
Install-ChocolateyPackage @packageArgs
