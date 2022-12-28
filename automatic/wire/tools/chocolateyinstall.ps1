$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wire'
  installerType  = 'exe'
  url            = 'https://github.com/wireapp/wire-desktop/releases/download/windows/3.30.4368/Wire-Setup.exe'
  checksum       = 'ECE6ACA09ED5E98EA444488C57DC5F8FD066E8CAA363624DCF3305809A40B5AF'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  softwareName   = 'Wire'
}
Install-ChocolateyPackage @packageArgs
