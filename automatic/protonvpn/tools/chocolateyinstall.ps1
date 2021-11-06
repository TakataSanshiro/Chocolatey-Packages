$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.24.1.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '4c5f2babde314dc238dc31dbc111ea0dd9f0890beaf75b349f035c925f20e813'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
