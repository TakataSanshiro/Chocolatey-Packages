$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://github.com/ProtonVPN/win-app/releases/download/3.3.0/ProtonVPN_v3.3.0.exe'
  silentArgs     = '/silent'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = 'c5a99099f3bbc7dea9737347ee18ad71e7023f44dab135fe37201ccf3e392aea'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs

Start-WaitandStop "ProtonVPN"
