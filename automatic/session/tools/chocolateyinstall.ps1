$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.11.4/session-desktop-win-x64-1.11.4.exe'
  checksum       = '8e7ba19a548c9898352f4c290dd6d7c698a08404b4de28c34849936d36574b84'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
