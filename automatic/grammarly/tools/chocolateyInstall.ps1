$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'grammarly'
  installerType  = 'exe'
  url            = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe'
  checksum       = '368e252f2e066bda82b8524c4ac939e5728154a334b991153a4fcbc3a2320f14'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Grammarly*'
}
Install-ChocolateyPackage @packageArgs
