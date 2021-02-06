$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.18.5.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = 'c721819731018c283a7349f78b70490b226a7910d22d7ed3c6a9f290add5b38a'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
