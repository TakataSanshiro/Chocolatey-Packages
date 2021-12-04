$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.24.2.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = 'ba05cc468d6c24a1c61483815583c63e3d7bf4b779a54db300a8ac340c4359fb'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
