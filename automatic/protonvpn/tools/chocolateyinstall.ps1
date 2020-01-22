$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.12.0.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = 'B254BF51675A8C615378556B217A30A8ADB449662BC2B944E939EB1573BF3F3A'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
