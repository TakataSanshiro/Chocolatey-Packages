$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'beeftext.install'
  installerType  = 'exe'
  url            = 'https://github.com/xmichelo/Beeftext/releases/download/v6.2/Beeftext-6.2-Installer.exe'
  checksum       = '3a20cc984a58e05ade2695b9a9aafa18eb4e80da8585772e9404e370c798f994'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Beeftext'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
