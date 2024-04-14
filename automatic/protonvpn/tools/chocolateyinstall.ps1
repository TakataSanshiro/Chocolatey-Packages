$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://github.com/ProtonVPN/win-app/releases/download/3.2.11/ProtonVPN_v3.2.11.exe'
  silentArgs     = '/silent'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = 'eb37bf757a2613e6b5c0d328e9b27c64902249c510d8883593e83ff289794aa0'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs

Start-WaitandStop "ProtonVPN"
