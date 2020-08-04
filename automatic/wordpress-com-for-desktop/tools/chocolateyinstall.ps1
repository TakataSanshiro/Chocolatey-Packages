$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wordpress-com-for-desktop'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/wp-desktop/releases/download/v6.0.1/wordpress.com-win32-setup-6.0.1.exe'
  checksum       = 'e635a674292de0b7e4e49745a95ed71e3ce65c66d9eded3abf3c064fe98a4472'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'WordPress.com Desktop*'
}
Install-ChocolateyPackage @packageArgs
