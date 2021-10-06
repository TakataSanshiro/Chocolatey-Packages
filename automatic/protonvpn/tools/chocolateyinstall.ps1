$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.23.4.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = 'c4eaddc22ebc6244771c53098c734978ca59ba1a2552cdaf033be9ca8bc6204c'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
