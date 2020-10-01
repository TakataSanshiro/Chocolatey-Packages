$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'beeftext.install'
  installerType  = 'exe'
  url            = 'https://github.com/xmichelo/Beeftext/releases/download/v7.2/Beeftext-7.2-Installer.exe'
  checksum       = 'c2e17086af41bf4d76d632f5bfbef6f07e37c35bf979255f43ee10552619408f'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Beeftext'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
