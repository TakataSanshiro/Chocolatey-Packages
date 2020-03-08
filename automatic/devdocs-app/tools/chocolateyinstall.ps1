$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'devdocs-app'
  installerType  = 'exe'
  url            = 'https://github.com/egoist/devdocs-desktop/releases/download/v0.7.1/DevDocs-Setup-0.7.1.exe'
  checksum       = 'f7c8e51ce59167946c236b44a454e8726614139a23c87e4b9c7316995e8a54ab'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'DevDocs'
}
Install-ChocolateyPackage @packageArgs
