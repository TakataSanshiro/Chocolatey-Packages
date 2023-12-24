$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'grammarly-for-windows'
  installerType  = 'exe'
  url            = 'https://download-windows.grammarly.com/GrammarlyInstaller.exe'
  checksum       = '2ED18618AC4B8144BE5FF37A5720758CBDA92A3B60EBE0078FE4A6E0C8D33564'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Grammarly-for-windows*'
}
Install-ChocolateyPackage @packageArgs
