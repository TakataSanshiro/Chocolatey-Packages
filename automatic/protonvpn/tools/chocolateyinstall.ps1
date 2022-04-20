$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'protonvpn'
  fileType       = 'exe'
  url            = 'https://protonvpn.com/download/ProtonVPN_win_v1.27.2.exe'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'ProtonVPN*'
  checksum       = '5685b17417c6faf5a653c57fbbb375f1e858aa64132c54d545a1ea3c9103b345'
  checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs
