$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://github.com/Ruben2776/PicView/releases/download/2.3.1/PicView-2.3.1.exe'
  checksum       = '8c9d92f7744e17760196970bbfa6db76ef762e0c8b5e676cc0054f94f003d601'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'Picview*'
}
Install-ChocolateyPackage @packageArgs
