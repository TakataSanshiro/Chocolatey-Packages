$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'protonvpn'
  fileType      = 'exe'
  url           = 'https://protonvpn.com/download/ProtonVPN_win_v1.8.1.exe'
  silentArgs    = '/quiet'
  validExitCodes= @(0)
  softwareName  = 'ProtonVPN*'
  checksum      = '29B7DCAC74FDC211D7F31AF228DCCB6D58CB0C62CA2C20A21344D21EE05D0970'
  checksumType  = 'sha256'
}
Install-ChocolateyPackage @packageArgs
