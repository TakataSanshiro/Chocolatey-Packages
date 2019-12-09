$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'beeftext.install'
  installerType  = 'exe'
  url            = 'https://github.com/xmichelo/Beeftext/releases/download/v6.0/Beeftext-6.0-Installer.exe'
  checksum       = 'FCC1CA8F42CDEFCD01C00C8D890A6C3D36D399F949A3E43D428F269A05A47FE5'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Beeftext'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs