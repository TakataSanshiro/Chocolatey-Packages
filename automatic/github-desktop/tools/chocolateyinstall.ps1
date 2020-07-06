$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.5.3-f26bc4fa/GitHubDesktopSetup.exe'
  checksum       = 'feeb24002fca661383ece230aa12ff7dc810e10a3c9743700b74e347d45d1219'
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
