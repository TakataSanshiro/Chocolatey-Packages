$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v2.0.1.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = 'b6db90130e99b34b6b28cd48c244b5c897baaa6f5cb200f83feb74d32614a3e3'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
