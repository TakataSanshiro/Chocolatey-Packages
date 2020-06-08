$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'session'
  installerType  = 'exe'
  url            = 'https://github.com/loki-project/session-desktop/releases/download/v1.0.9/session-messenger-desktop-win-1.0.9.exe'
  checksum       = 'bc647c42ab42ad2999d577077b523e969001e988adf1a32335f5cf041775b4f1'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Session'
}
Install-ChocolateyPackage @packageArgs
