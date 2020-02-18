$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.13.3.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '5F8F3C9D9CF577D3F640522CD6EA5A1A44BCE2329FEEA0D85FFCBF6F85CCF1D1'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
