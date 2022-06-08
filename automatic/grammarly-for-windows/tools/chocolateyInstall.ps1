$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'grammarly-for-windows'
  installerType  = 'exe'
  url            = 'https://download-windows.grammarly.com/GrammarlyInstaller.exe'
  checksum       = '68f72ba02f59a5d73ce0c140fe1c9f909fc627621a0c6d2c37853288b6b525ff'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Grammarly-for-windows*'
}
Install-ChocolateyPackage @packageArgs
