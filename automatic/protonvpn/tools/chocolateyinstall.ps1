$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.25.0.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = 'be8500bb0c29417d4dbc543aabdfa1817363176e3fdcb651e916015d11d91ea3'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
