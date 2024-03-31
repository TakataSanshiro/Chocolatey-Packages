$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://github.com/Ruben2776/PicView/releases/download/2.2.4/PicView-2.2.4.exe'
  checksum       = '84a55fb40cebf93351e80ed2251c28e5e82cd777ad68722ba8f917d16dfe2a69'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'Picview*'
}
Install-ChocolateyPackage @packageArgs
