$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'beeftext.install'
  installerType  = 'exe'
  url            = 'https://github.com/xmichelo/Beeftext/releases/download/v8.1/Beeftext-8.1-Installer.exe'
  checksum       = 'b2668c7e263d31bbef3db9aaaa74369e8362b248a41668b138ac2e4f19501d29'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Beeftext'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
