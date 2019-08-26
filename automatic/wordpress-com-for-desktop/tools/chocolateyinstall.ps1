$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wordpress-com-for-desktop'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/wp-desktop/releases/download/v4.3.0/WordPressDesktop-Setup-4.3.0.exe'
  checksum       = '451d7df83ad8061f68a1475a9679486027c45d7f6b3a4a10e94b00eef127c32a'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'WordPress.com Desktop*'
}
Install-ChocolateyPackage @packageArgs
