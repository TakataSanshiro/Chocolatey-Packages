$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/1.6.4-29f00fd4/GitHubDesktopSetup.exe'
  checksum       = 'E09733F15C47B22E5FBB827036A5B02021D2747A54AE7759E3DD94A2353FB1F5'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
