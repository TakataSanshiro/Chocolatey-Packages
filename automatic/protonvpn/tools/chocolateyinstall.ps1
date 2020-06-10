$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.16.1.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = 'a4d2cfca3209f21e50a02387439e90cb0dd595235560867059b178eee835d9e9'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
