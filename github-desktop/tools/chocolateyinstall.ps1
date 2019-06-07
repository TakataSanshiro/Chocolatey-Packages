$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.0.3-d79a43a1/GitHubDesktopSetup.exe'
  checksum       = '6924B7CB0BEE8EDFEC6818680066165275DD4C59100E6F1DA4326BEF66211028'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
