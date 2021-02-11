$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'terminus'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/terminus/releases/download/v1.0.132/terminus-1.0.132-setup.exe'
  checksum       = 'dff28d162bc0e2086f13f203c04929dba7c1365794c644a0639c8a1af067459e'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Terminus*'
}
Install-ChocolateyPackage @packageArgs
