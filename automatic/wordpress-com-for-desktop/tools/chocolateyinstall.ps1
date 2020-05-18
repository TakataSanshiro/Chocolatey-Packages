$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wordpress-com-for-desktop'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/wp-desktop/releases/download/v5.1.1/wordpress.com-win32-setup-5.1.1.exe'
  checksum       = 'c8930d913603ba367f2e896f77a09082583825240c0e5fc1b2dd309330f2d0f1'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'WordPress.com Desktop*'
}
Install-ChocolateyPackage @packageArgs
