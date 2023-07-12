$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://github.com/ProtonVPN/win-app/releases/download/3.0.7/ProtonVPN_v3.0.7.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '2b4ae19913ee3d15751b95d05c1efe794c174e802d0a352fed333c2a6396fd1e'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs

Start-WaitandStop "ProtonVPN"
