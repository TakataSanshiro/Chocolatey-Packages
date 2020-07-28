$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.16.3.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '343403394c655dc1b58f5d8bf5b7dd33d0df9af2f844ffb1e5ef8d346a1dc087'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
