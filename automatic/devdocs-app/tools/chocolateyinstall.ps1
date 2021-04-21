$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'devdocs-app'
  installerType  = 'exe'
  url            = 'https://github.com/egoist/devdocs-desktop/releases/download/v0.7.2/DevDocs-Setup-0.7.2.exe'
  checksum       = '0e9a034affc3e966e8f68aa794a97a1daea80f4f2c080910e75c47c0782d9ae0'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'DevDocs'
}
Install-ChocolateyPackage @packageArgs
