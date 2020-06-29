$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wordpress-com-for-desktop'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/wp-desktop/releases/download/v6.0.0/wordpress.com-win32-setup-6.0.0.exe'
  checksum       = 'ebe733f2a0996e3eb0e49e61be23810e16a333dafba6655c29745ff3db0df14f'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'WordPress.com Desktop*'
}
Install-ChocolateyPackage @packageArgs
