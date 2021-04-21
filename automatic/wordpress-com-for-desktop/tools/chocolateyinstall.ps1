$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wordpress-com-for-desktop'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/wp-calypso/releases/download/v6.13.0/wordpress.com-win32-setup-6.13.0.exe'
  checksum       = '7695d5b201b46bfcc5ff0dc9c4ac2fe950f86b812dd6881be50ac1db7e39240b'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'WordPress.com Desktop*'
}
Install-ChocolateyPackage @packageArgs
