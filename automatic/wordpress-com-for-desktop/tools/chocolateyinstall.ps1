$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wordpress-com-for-desktop'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/wp-desktop/releases/download/v4.4.2/WordPressDesktop-Setup-4.4.2.exe'
  checksum       = '28d31f719744f5b8940b2318ab41d816cd52e7cffa45ee11cb6ad15c9c3afbbd'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'WordPress.com Desktop*'
}
Install-ChocolateyPackage @packageArgs
