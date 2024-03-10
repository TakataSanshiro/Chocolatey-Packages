$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://github.com/Ruben2776/PicView/releases/download/2.2.3/PicView-2.2.3.exe'
  checksum       = '85011c0cc63b0abe74f83a51a081efae5850a6d354540a7a94e1450cf1941e65'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'Picview*'
}
Install-ChocolateyPackage @packageArgs
