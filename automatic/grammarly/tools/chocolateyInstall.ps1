$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'grammarly'
  installerType  = 'exe'
  url            = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe'
  checksum       = 'c5c641467d4a865748e929706f0d334ab6565f92c0e217b7b2d88528cd717718'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Grammarly*'
}
Install-ChocolateyPackage @packageArgs
