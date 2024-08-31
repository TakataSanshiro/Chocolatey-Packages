$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://github.com/ProtonVPN/win-app/releases/download/3.3.2/ProtonVPN_v3.3.2.exe'
  silentArgs     = '/silent'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '7a2e8ab8c661787d2df276eb4940b18334b5103927acee009ca2331754b75754'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs

Start-WaitandStop "ProtonVPN"
