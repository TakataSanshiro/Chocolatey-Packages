$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'grammarly'
  installerType  = 'exe'
  url            = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe'
  checksum       = '3cbd0a7070952e00e832ce846925bc866eb484ba057ea2b6c792e913e0a906de'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Grammarly*'
}
Install-ChocolateyPackage @packageArgs
