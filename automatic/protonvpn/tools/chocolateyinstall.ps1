$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.21.2.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = 'ec71d74129011aa9154f457a50f5c653cba2c85e0ae2c2ddcf2af97dfb48b3a1'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
