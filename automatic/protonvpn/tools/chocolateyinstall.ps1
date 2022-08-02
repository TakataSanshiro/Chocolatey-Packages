$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v2.0.5.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = 'fe4436039d6fbeae595f89000205309114ee520b4bb0dd434d30c5b4502aaeee'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
