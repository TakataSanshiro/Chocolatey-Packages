$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tinc'
  installerType  = 'exe'
  url            = 'https://www.tinc-vpn.org/packages/windows/tinc-1.0.36-install.exe'
  checksum       = 'DB2EA5088CDD7E16374B2952F8A7A96DF82A38C3773A2808F32B1F44E7285D2B'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'tinc'
}
Install-ChocolateyPackage @packageArgs
