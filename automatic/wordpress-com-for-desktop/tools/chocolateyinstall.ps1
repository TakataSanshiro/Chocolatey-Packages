$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wordpress-com-for-desktop'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/wp-desktop/releases/download/v4.7.0/WordPressDesktop-Setup-4.7.0.exe'
  checksum       = '8b7c19e1e2f35bada8639e1731382dfc068f55ecc257765276b11a7c3192922c'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'WordPress.com Desktop*'
}
Install-ChocolateyPackage @packageArgs
