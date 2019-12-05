$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'grammarly'
  installerType  = 'exe'
  url            = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe'
  checksum       = 'c5c9c3dddc4fbe4897be3fbbfcadfb2140fe6e8cb4a8b6aa500b712e52f795e0'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Grammarly*'
}
Install-ChocolateyPackage @packageArgs
