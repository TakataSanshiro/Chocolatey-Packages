$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wordpress-com-for-desktop'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/wp-desktop/releases/download/v3.9.0/WordPressDesktop-Setup-3.9.0.exe'
  checksum       = 'F467AD96F8A5159652E844AD7A8454D2D7E3792194236F1BAF2CA16F0CE5DFC0'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'WordPress.com Desktop*'
}
Install-ChocolateyPackage @packageArgs
