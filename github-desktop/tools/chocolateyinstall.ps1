$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.1.2-f3a504b2/GitHubDesktopSetup.exe'
  checksum       = '3D9C6D10449D42F68B40CC5BAE530184A0BD0235F9C04F2D0DD3E624D1E5A042'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
