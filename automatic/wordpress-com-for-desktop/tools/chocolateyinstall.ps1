$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wordpress-com-for-desktop'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/wp-desktop/releases/download/v4.4.0/WordPressDesktop-Setup-4.4.0.exe'
  checksum       = '9d159c66f70f575759035db2a9bc72d472043b308f19d3e3dbb4ad8efc5c5662'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'WordPress.com Desktop*'
}
Install-ChocolateyPackage @packageArgs
