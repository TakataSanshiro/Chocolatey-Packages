$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'protonvpn'
  fileType      = 'exe'
  url           = 'https://protonvpn.com/download/ProtonVPN_win_v1.9.2.exe'
  silentArgs    = '/quiet'
  validExitCodes= @(0)
  softwareName  = 'ProtonVPN*'
  checksum      = 'B3EED41D100C32700E48B7A365CBC22E7AEE78A0E62C53D58E5B02771BB8776B'
  checksumType  = 'sha256'
}
Install-ChocolateyPackage @packageArgs
