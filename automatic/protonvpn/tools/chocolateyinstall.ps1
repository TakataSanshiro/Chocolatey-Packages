$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.17.6.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '9bf3bab11cc250e6e85e572ece87b35ea304976696049a12abf778c80a6fdbc4'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
