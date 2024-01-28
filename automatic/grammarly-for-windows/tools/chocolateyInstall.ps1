$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'grammarly-for-windows'
  installerType  = 'exe'
  url            = 'https://download-windows.grammarly.com/GrammarlyInstaller.exe'
  checksum       = 'F288D33ECE6146DC0E38374DCCF3D8F21F3F78B903A4A8C06CEC5D1D1D08C929'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Grammarly-for-windows*'
}
Install-ChocolateyPackage @packageArgs
