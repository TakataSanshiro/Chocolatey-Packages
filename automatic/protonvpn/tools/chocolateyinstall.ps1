$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.18.2.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '4003f901c0d16b097443616447f113624c118798c00e041aa9d657d9b27dd7d4'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
