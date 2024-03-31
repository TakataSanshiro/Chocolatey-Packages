$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'grammarly-for-windows'
  installerType  = 'exe'
  url            = 'https://download-windows.grammarly.com/GrammarlyInstaller.exe'
  checksum       = '30C393145C6D6C8F75D8D9CC22767DE4D587DAEDC631CA2FDED66F20E23B7096'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Grammarly-for-windows*'
}
Install-ChocolateyPackage @packageArgs
