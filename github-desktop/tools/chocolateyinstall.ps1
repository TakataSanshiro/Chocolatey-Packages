$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.1.3-ed83ffb7/GitHubDesktopSetup.exe'
  checksum       = '823ABCAF8DD1ED32C47EDC30875BB2370D4285CB3123F3E832CCD872B494FA14'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
