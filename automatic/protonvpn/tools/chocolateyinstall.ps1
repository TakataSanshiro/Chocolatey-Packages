$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.13.4.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '3ED410DB724E5219738E764C3C9A7A575F6F8BA1EE357C2D3F2BF546187F0352'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
