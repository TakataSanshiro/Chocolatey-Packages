$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.17.4.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = 'fbd74d9f5e228745668405cd68bf10e0a6f0686aea210a1409faaca210e95d47'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
