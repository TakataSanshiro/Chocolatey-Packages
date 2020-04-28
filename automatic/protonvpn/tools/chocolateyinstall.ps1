$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.15.0.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '5bbd640b77582d78b8acf96796b50dc407b00597b1a15270ad2e8e47844f20af'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
