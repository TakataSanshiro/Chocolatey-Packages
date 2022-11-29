$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v2.2.1.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '78f313c6f45e23738ba0af184cfad17d4593261935f4650f9f3d36421075e39a'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
