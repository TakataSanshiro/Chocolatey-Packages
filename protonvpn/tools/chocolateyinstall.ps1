$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'protonvpn'
  fileType      = 'exe'
  url           = 'https://protonvpn.com/download/ProtonVPN_win_v1.10.1.exe'
  silentArgs    = '/quiet'
  validExitCodes= @(0)
  softwareName  = 'ProtonVPN*'
  checksum      = 'C322AA76BB599F5C13EC94A680171CBFEEF9120C5FAD700FC7E1F011AAEBB0F3'
  checksumType  = 'sha256'
}
Install-ChocolateyPackage @packageArgs
