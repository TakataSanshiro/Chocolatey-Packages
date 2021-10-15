$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.24.0.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = 'b1e979f78028a391f7fb89542bfdfcc863827864ea1069d7a1d19854b4852b0e'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
