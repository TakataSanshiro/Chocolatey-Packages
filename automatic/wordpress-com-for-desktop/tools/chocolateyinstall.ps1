$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wordpress-com-for-desktop'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/wp-desktop/releases/download/v5.0.0/WordPress.com-Setup-5.0.0.exe'
  checksum       = '7ec30aa1675b72e03e4e647faee5ce9f24c78deeaf70f359a5a988ec2e205b86'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'WordPress.com Desktop*'
}
Install-ChocolateyPackage @packageArgs
