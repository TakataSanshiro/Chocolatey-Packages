$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.5.6-e0dac138/GitHubDesktopSetup.exe'
  checksum       = '922152e9f8b607aac0a989dacf5151ebde7b06e9e1d542362d6221afc87db1ae'
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
