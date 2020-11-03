$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.17.5.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '9b3e18215586fba4df71de59b70fe73abe3c2203c810c68c92a5b70a4fdc16e0'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
