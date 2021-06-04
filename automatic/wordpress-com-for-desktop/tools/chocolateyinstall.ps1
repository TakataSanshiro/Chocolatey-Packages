$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wordpress-com-for-desktop'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/wp-calypso/releases/download/v6.15.0/wordpress.com-win32-setup-6.15.0.exe'
  checksum       = 'f9057aedd093d339f1ed9b5c616fc0cc584257545f10d469e575b66eee38e35e'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'WordPress.com Desktop*'
}
Install-ChocolateyPackage @packageArgs
