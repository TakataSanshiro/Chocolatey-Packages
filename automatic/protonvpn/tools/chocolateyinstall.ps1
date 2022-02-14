$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.25.2.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = 'a3a770dbf2c7b56f45d30c2bb934c78c5fa0f2017bf4e51673232dd4eb7e73c2'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
