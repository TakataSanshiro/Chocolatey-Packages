$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wire'
  installerType  = 'exe'
  url            = 'https://github.com/wireapp/wire-desktop/releases/download/windows%2F3.26.4124/WireSetup.3.26.4124.exe'
  checksum       = '0f110ab8e43c8093735c1de6bebbc30100560c87392cf4f5dcb4d0561642108f'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  softwareName   = 'Wire'
}
Install-ChocolateyPackage @packageArgs
