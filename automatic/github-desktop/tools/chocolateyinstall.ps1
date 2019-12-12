$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.2.4-be951a19/GitHubDesktopSetup.exe'
  checksum       = 'ccdaf9e5dfe6dc6dc65d40287aa62271fb0e85d0d97bbc77017e9343c40bb85e'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
