$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.22.2.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '0c2a0c43bdef628d767a33b4d90895203288e34f46e201b667b7f5a5310369d0'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
