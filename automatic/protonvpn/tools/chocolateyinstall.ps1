$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v2.0.0.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '7f9e88e584aa540ac00e7b94083500a7488f6815b48dcc117e5a208c5f395f52'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
