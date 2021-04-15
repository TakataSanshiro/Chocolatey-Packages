$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.20.1.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '49914f57716fec426bc8a552c2034a41f8d1e76be02feef99d57f26c11bef7ee'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
