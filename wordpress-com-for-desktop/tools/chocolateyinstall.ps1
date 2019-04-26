$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wordpress-com-for-desktop'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/wp-desktop/releases/download/v4.0.0/WordPressDesktop-Setup-4.0.0.exe'
  checksum       = '8E9769E2C5FE8F1A2EF290A0C7460B20AE262A446E760FFDD8B60D6E7FACB0C3'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'WordPress.com Desktop*'
}
Install-ChocolateyPackage @packageArgs
