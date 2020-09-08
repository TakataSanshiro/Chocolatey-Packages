$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.17.1.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '774da46dd76567dca64a201bb3f1750b73804d39211a33ecf3a2d070ccc9c5ba'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
