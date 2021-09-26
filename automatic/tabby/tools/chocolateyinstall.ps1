$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'tabby'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/tabby/releases/download/v1.0.158/tabby-1.0.158-setup.exe'
  checksum       = '455c87839aef0dc761de500c10208585a044f9c994da5febffbdb5d74912ab1f'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Tabby*'
}
Install-ChocolateyPackage @packageArgs
