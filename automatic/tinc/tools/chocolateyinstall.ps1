$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tinc'
  installerType  = 'exe'
  url            = 'https://www.tinc-vpn.org/packages/windows/tinc-1.0.35-install.exe'
  checksum       = '0f8b6d9129d0f8e4603b4e96be70d6ba518bb2e2e6c695d6bb83e92d80d8c685'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'tinc'
}
Install-ChocolateyPackage @packageArgs
