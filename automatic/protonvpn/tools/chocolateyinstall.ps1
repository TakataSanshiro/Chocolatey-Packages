$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v2.4.1.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = 'c95cf2af65dd0b1556c02cd17952462f02314cf532eec06ebca08328549790ae'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
