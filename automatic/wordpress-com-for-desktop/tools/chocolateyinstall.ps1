$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wordpress-com-for-desktop'
  installerType  = 'exe'
  url            = 'https://github.com/Automattic/wp-desktop/releases/download/v4.5.0/WordPressDesktop-Setup-4.5.0.exe'
  checksum       = '126a948d736d95cbe05e920c416b661d4a0053f3dc182553bd99024bdb0c6ebc'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'WordPress.com Desktop*'
}
Install-ChocolateyPackage @packageArgs
