$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.17.2.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = 'd104a4411d28044f0deb77415117b9d36f3625b90ba7c6e5208611004841d82b'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
