$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tabby'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/tabby/releases/download/v1.0.159/tabby-1.0.159-setup.exe'
  checksum       = 'd308a0d3b72ad72d5f945e88ae4c3b4f96c290ac1275230cc6a28cd6cb44d05a'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Tabby*'
}
Install-ChocolateyPackage @packageArgs
