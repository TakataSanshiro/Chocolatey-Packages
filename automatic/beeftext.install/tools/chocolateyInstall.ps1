$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'beeftext.install'
  installerType  = 'exe'
  url            = 'https://github.com/xmichelo/Beeftext/releases/download/v9.1/Beeftext-9.1-Installer.exe'
  checksum       = '96c8e3712df1bdcf4cee9d8ca37f59962aae65879a73a666251f72f936e38348'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Beeftext'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
