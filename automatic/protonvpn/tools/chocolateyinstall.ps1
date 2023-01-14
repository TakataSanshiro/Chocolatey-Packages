$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v2.3.2.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '3fd2a8f09887fef57cd6c99e31ad71804281142c4f731f0685dfea8c362411b6'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
