$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.14.3.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = 'fb5ec1e1711318840d391fcdf8180d131f171c3fdf13ad4a4eafd35faf0a7ef3'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
