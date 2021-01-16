$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'terminus'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/terminus/releases/download/v1.0.127/terminus-1.0.127-setup.exe'
  checksum       = '27ad3897fc0a0fad96f47d1d53c8f3a127bdd026d0946aecbf642c06bd63d1b4'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Terminus*'
}
Install-ChocolateyPackage @packageArgs
