$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wordpress-com-for-desktop'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/wp-desktop/releases/download/v6.0.2/wordpress.com-win32-setup-6.0.2.exe'
  checksum       = '6bd7bf3210d13aaf4faf6e9e1b303ae50c3bc72188eac7c5c0f87680efc0f11a'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'WordPress.com Desktop*'
}
Install-ChocolateyPackage @packageArgs
