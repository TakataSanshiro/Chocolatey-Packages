$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://github.com/Ruben2776/PicView/releases/download/2.2.6/PicView-2.2.6.exe'
  checksum       = 'CF46CE0C25774C81D1731EF887F0F9D6A51124E54848AB5EC49713C855AA2654'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'Picview*'
}
Install-ChocolateyPackage @packageArgs
