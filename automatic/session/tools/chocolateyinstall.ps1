$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.11.3/session-desktop-win-x64-1.11.3.exe'
  checksum       = '781eb89f519ccc09ac63e0b86868b84a3721fdb255acc08501cc02d1877616af'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
