$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'grammarly-for-windows'
  installerType  = 'exe'
  url            = 'https://download-windows.grammarly.com/GrammarlyInstaller.exe'
  checksum       = '38CD42FC303D93685AECFE4E08FC0C45B22AA7D95EBCC4FDA24F7D8763597FE9'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Grammarly-for-windows*'
}
Install-ChocolateyPackage @packageArgs
