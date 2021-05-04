$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.20.3.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '3d10327a2f400e29c929213cfd9107c274eb06072aefeffc15b512360c552697'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
