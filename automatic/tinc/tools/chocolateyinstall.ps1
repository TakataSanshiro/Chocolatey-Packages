$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tinc'
  installerType  = 'exe'
  url            = 'https://www.tinc-vpn.org/packages/windows/tinc-1.0.36-install.exe'
  checksum       = '513b2afb0f391f36184779ff998ed2b1ac306dd6ac9b8a5f180e65a19b79fdc4'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'tinc'
}
Install-ChocolateyPackage @packageArgs
