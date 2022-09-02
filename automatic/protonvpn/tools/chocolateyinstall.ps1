$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v2.0.6.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '0c2f873903c9c90f3fd0acf2c6fadf435fd99c520d623f8a720cd16e3e11b2a2'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
