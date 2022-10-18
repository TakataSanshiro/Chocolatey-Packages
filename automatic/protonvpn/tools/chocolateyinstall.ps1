$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v2.2.0.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '6e56a88530bacab438705410194bc3241eff32baa87d42217280ac60e3f810f0'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
