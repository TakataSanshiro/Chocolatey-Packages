$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.17.3.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = 'e9b3592076e5db50bc946a852ec289df90f44e26191120f5944cd731485cec94'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
