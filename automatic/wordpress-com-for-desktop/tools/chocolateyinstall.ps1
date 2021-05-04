$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wordpress-com-for-desktop'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/wp-calypso/releases/download/v6.14.0/wordpress.com-win32-setup-6.14.0.exe'
  checksum       = '5942d44a8b013a3034d101c38b3c5715ddd7f471ab3213d18c01e51cd663d6e4'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'WordPress.com Desktop*'
}
Install-ChocolateyPackage @packageArgs
