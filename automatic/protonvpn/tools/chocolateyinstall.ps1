$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.20.4.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '597f7cb1f0ccab31471c013c9df60eb1cb318eae147d5c12533deb0811cef90f'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
