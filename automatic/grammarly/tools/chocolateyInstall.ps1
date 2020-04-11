$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'grammarly'
  installerType  = 'exe'
  url            = 'https://download-editor.grammarly.com/windows/GrammarlySetup.exe'
  checksum       = '4169f3201c899e5881009d8734ac955afff457143f40fa4eb20c0b2cb8acf5db'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Grammarly*'
}
Install-ChocolateyPackage @packageArgs
