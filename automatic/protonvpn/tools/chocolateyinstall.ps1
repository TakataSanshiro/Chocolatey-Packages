$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v2.1.1.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '9a266e2fe9bfe6a16d469c3b663b194de8cddd9cdf63b34749a21c44bd85df40'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
